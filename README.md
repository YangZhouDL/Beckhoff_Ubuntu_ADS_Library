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
See my blog for more detailed implementation and technical details
> ****[Beckhoff Ubuntu ADS库结构、编译与使用优化(像使用OpenCV一样使用ADS库!)](https://blog.csdn.net/Solititude/article/details/129613935?spm=1001.2014.3001.5501)****
