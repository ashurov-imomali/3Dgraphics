cmake_minimum_required(VERSION 3.26)
project(anim)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(anim
        main.cpp
        main.h)
