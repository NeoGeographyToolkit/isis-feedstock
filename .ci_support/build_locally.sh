#!/usr/bin/env bash

# Conda forge CI script for local testing
# This script mimics what conda-forge CI would do

set -ex

# Install conda-build
conda install -y conda-build conda-verify

# Render the recipe to check for errors
conda render recipe/

# Build the package
conda build recipe/ --no-test

# Test the package (if build succeeds)
# conda build recipe/ --test

echo "Build completed successfully!"
