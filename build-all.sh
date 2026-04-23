#!/bin/sh
# 全フォルダを順番にビルドする
for dir in mrcube-common mrcube-en mrcube-ja; do
    echo "--- Starting build in $dir ---"
    cd $dir
    ./build.sh
    cd ..
done
