#!/bin/bash

(cd && git clone https://github.com/ankitects/mdbook-binaries.git)
export PATH="$HOME/mdbook-binaries:$PATH"
if [ "$CHECK" = "" ]; then
    rm $HOME/mdbook-binaries/mdbook-linkcheck
fi    
mdbook build
