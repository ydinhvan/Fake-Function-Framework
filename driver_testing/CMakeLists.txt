
cmake_minimum_required(VERSION 3.18)

project(driver_fff_test)

include_directories(include)

add_library(LibDriver src/driver.c)

# Create the driver fff test binary
add_executable(driver_fff_test src/driver.test.fff.cpp)
target_link_libraries(driver_fff_test LibDriver gtest pthread)


