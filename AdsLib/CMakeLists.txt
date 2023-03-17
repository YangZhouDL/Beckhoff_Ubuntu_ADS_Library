cmake_minimum_required(VERSION 3.10)
project(adslib)

include_directories(${PROJECT_SOURCE_DIR}/include)
include_directories(${PROJECT_SOURCE_DIR}/standalone)

set(SOURCES
  src/AdsDef.cpp
  src/AdsDevice.cpp
  src/AdsFile.cpp
  src/AdsLib.cpp
  src/Frame.cpp
  src/LicenseAccess.cpp
  src/Log.cpp
  src/RouterAccess.cpp
  src/RTimeAccess.cpp
  src/Sockets.cpp

  standalone/AdsLib.cpp
  standalone/AmsConnection.cpp
  standalone/AmsNetId.cpp
  standalone/AmsPort.cpp
  standalone/AmsRouter.cpp
  standalone/NotificationDispatcher.cpp
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -pthread")

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

add_library(ads SHARED ${SOURCES})

if(CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
  target_link_libraries(ads PUBLIC wsock32)
endif()

if(WIN32 EQUAL 1)
  target_link_libraries(ads PUBLIC ws2_32)
endif()

set(INSTALL_INCLUDE_DIR /usr/local/include/ads)
install(DIRECTORY ${PROJECT_SOURCE_DIR}/include/
  DESTINATION ${INSTALL_INCLUDE_DIR}/include/
  FILES_MATCHING PATTERN "*.h")
install(DIRECTORY ${PROJECT_SOURCE_DIR}/standalone/
  DESTINATION ${INSTALL_INCLUDE_DIR}/standalone/
  FILES_MATCHING PATTERN "*.h")

set(CMAKE_INSTALL_PREFIX /usr/local)
install(TARGETS ads
  LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)