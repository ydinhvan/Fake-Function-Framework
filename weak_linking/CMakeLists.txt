cmake_minimum_required(VERSION 3.18)

project(weak_linking)

include_directories(include)

add_library(LibWeak 
	src/bus.c
	src/display.c
	src/error.c
	src/main.c
	src/sensor.c
)
		
add_executable(test_display src/test_display.cpp)
target_link_libraries(test_display LibWeak gtest pthread)