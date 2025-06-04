#!/bin/bash

# Version configuration
MDBOOK_VERSION="0.4.51"
MDBOOK_LINKCHECK_COMMIT="3222e857f22a5b41596070848203d160a4d78fd9"
MDBOOK_TOC_VERSION="0.14.2"

# mdbook needs to be able to find things like mdbook-toc
export PATH="$HOME/.cargo/bin:$PATH"

install_if_needed() {
    local binary=$1
    local install_cmd=$2
    
    if [ "$GITHUB_ACTIONS" = "true" ]; then
        # avoid recompiling if cached
        if ! command -v $binary &> /dev/null; then
            eval $install_cmd
        fi
    else
        eval $install_cmd
    fi
}

# Install required binaries
install_if_needed "mdbook" "cargo install mdbook --version $MDBOOK_VERSION"
install_if_needed "mdbook-toc" "cargo install mdbook-toc --version $MDBOOK_TOC_VERSION"
install_if_needed "mdbook-linkcheck" "cargo install --git https://github.com/ankitects/mdbook-linkcheck --rev $MDBOOK_LINKCHECK_COMMIT mdbook-linkcheck"

# Avoid checking links in deploy mode
if [ "$CHECK" == "" ]; then
    mv $HOME/.cargo/bin/mdbook-linkcheck linkcheck-tmp
fi

mdbook --version
mdbook build

if [ "$CHECK" == "" ]; then
  # restore linkcheck so it gets stored in the cache
  mv linkcheck-tmp $HOME/.cargo/bin/mdbook-linkcheck
fi
