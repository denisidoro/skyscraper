#!/bin/bash
set -euo pipefail
set -x

rm VERSION

build() {
    echo "--- Cleaning out old build if one exists ---"
    make --ignore-errors clean || true
    rm --force .qmake.stash || true
    qmake
    echo "--- Building Skyscraper v.$LATEST ---"
    make "-j$(nproc)"
    echo "--- Installing Skyscraper v.$LATEST ---"
    sudo make install
    echo "--- Skyscraper has been updated to v.$LATEST ---"
}

main() {
    build
}

main