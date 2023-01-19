cmake_minimum_required(VERSION 3.18)

project(embedded_fff_test)

include_directories(include)

add_library(LibEmbedded src/UI.c)

# Create the driver fff test binary
add_executable(UI_fff_test src/UI_test_cpp.cpp)
target_link_libraries(UI_fff_test LibEmbedded gtest pthread)


