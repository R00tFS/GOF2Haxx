#!/bin/bash
projects=("NoScreenShake")

if [ ! -d "packages" ]; then
    mkdir packages
fi

rm packages/**

for proj in ${projects[@]}; do
    cd $proj
    rm -rf packages/*
    make package FINALPACKAGE=1 && make clean && make package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless && make clean
    cp packages/* ../packages
    cd ..
done