#!/bin/sh
#install catch2

cd ./tests/.libs/Catch2
mkdir build
ls -a

cmake -Bbuild -H. -DBUILD_TESTING=OFF
sudo cmake --build build/ --target install
