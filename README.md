# Beckhoff_Ubuntu_ADS_Library
Optimized the structure, compilation and use of ADS communication library in Ubuntu system

```cpp
sudo chmod +x go.sh
sudo ./go.sh
```
Then you can use ADS Libray as OpenCV in Linux

Note CONFIG instead of REQUIRED
```cpp
find_package(ADS CONFIG)
include_directories(${ADS_INCLUDE_DIRS})

target_link_libraries(link_test ${ADS_LIBRARIES})
```
