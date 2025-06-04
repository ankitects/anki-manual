#!/bin/bash

if [ "$CHECK" = "" ]; then
    # Remove the binary to prevent link checking in second run
    rm $HOME/.cargo/bin/mdbook-linkcheck
fi

mdbook --version
mdbook build

