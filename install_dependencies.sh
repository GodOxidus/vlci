#!/bin/sh
#install catch2

git submodule update --recursive
cd ./tests/.libs/Catch2
mkdir build
ls -a

cmake -Bbuild -H. -DBUILD_TESTING=OFF
sudo cmake --build build/ --target install
