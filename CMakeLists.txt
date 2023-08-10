cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)

if (DEFINED ENV{PROJECT_NAME})
    set(PROJECT_NAME "$ENV{PLAYGROUND_PROJECT_NAME}")
else()
    set(PROJECT_NAME "playground")
endif()

project(${PROJECT_NAME})

include_directories(include)

add_executable(${PROJECT_NAME} src/main.cpp)

add_subdirectory(foo_lib)

target_link_libraries(${PROJECT_NAME} PRIVATE foo_lib)