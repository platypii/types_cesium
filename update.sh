#!/bin/bash

VERSION=1.80
URL=https://github.com/CesiumGS/cesium/releases/download/$VERSION/Cesium-$VERSION.zip

mkdir -p tmp
cd tmp

wget $URL -O cesium.zip

unzip cesium.zip Source/Cesium.d.ts

mv Source/Cesium.d.ts ../index.d.ts

# Cleanup
cd ..
rm -r tmp
