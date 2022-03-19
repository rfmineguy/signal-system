cmake_minimum_required (VERSION 3.19)
project (SignalSystemExec)
project (SignalSystemLib)

set (CMAKE_CXX_STANDARD_REQUIRED True)
set (CMAKE_EXPORT_COMPILE_COMMANDS True)
set (CMAKE_CXX_STANDARD 17)
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -pthread")

set (SOURCES
  src/main.cpp
  src/dispatcher.cpp
  )

include_directories(SignalSystemExec src/)
include_directories(SignalSystemLib src/)

add_library(SignalSystemLib STATIC ${SOURCES})
add_executable(SignalSystemExec ${SOURCES})
