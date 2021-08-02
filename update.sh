#!/bin/bash

set -e

VERSION_NPM=$(npm show cesium version)
VERSION=${VERSION_NPM/.0/}
URL=https://github.com/CesiumGS/cesium/releases/download/$VERSION/Cesium-$VERSION.zip

echo "Updating to Cesium $VERSION"

mkdir -p tmp
cd tmp

wget $URL -O cesium.zip

unzip cesium.zip Source/Cesium.d.ts

mv Source/Cesium.d.ts ../index.d.ts

# Cleanup
cd ..
rm -r tmp

# Git
# git add .
# git commit -m "Cesium $VERSION"
# git tag v$VERSION
