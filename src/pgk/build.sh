#!/usr/bin/bash

###############################################################################
### Make sure the script is run from the root of the repository ###############
###############################################################################
REPO_ROOT=$(
    cd "$(git rev-parse --show-toplevel)"
    pwd
)
CURRENT_DIR=$(pwd)

if [ "$CURRENT_DIR" != "$REPO_ROOT" ]; then
    echo "Please run this script from the root of the repository."
    echo "Current: $CURRENT_DIR"
    echo "Expected: $REPO_ROOT"
    exit 1
fi
###############################################################################

mkdir -p pgk
pandoc -s --toc -c ../style.css -B top.html --metadata title="EDAB05 Programmering, grundkurs" src/pgk/index.md -o pgk/index.html
cp -r src/pgk/resources/* pgk/resources/.

