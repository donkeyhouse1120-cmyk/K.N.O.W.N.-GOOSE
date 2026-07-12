#!/bin/bash

# K.N.O.W.N. Goose ISO Builder
# Version 0.1 "Hatchling"

set -e

echo "Building K.N.O.W.N. Goose..."

PROJECT_DIR=$(pwd)

echo "Project directory:"
echo "$PROJECT_DIR"

echo "Preparing build environment..."

podman run --rm \
-v "$PROJECT_DIR:/known-goose" \
fedora:latest \
bash -c "
dnf install -y lorax livemedia-creator pykickstart &&
livemedia-creator \
--make-iso \
--ks /known-goose/kickstart/known.ks \
--iso-only
"

echo "Build complete!"

