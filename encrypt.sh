#!/bin/bash
# Re-encrypt src/index.html with StaticCrypt after making changes
# Usage: bash encrypt.sh

cd "$(dirname "$0")"
staticrypt src/index.html -p fight123 -d . --config false --short
sed -i '' 's/Bad password!/Wrong password!/g' index.html
echo "Encrypted index.html updated."
