#!/bin/bash

(cd && git clone https://github.com/ankitects/mdbook-binaries.git)
export PATH="$HOME/mdbook-binaries:$PATH"
mdbook build
