#!/bin/bash
projects=("NoScreenShake" "FasterShips")

if [ ! -d "packages" ]; then
    mkdir packages
fi

rm packages/**

for proj in ${projects[@]}; do
    cd $PWD/$proj
    rm -rf packages/* .theos/
    make package FINALPACKAGE=1 && make clean && make package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless && make clean
    cp packages/* ../packages
    cd ..
done