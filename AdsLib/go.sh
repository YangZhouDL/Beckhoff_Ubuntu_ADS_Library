#!/bin/bash
echo "Begin build ADS Library"
echo "-----------------------------------"
cd build
cmake ..
make -j4

echo -e "\nBegin install ADS Library"
echo "-----------------------------------"
sudo make install

echo -e "\nConfig ADS CMake"
echo "-----------------------------------"
sudo mkdir /usr/local/lib/cmake/ADS
sudo cp ../ADSConfig.cmake /usr/local/lib/cmake/ADS