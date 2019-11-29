#!/bin/sh
#install catch2

cd ./tests/.libs/Catch2

cmake -Bbuild -H. -DBUILD_TESTING=OFF
sudo cmake --build build/ --target install