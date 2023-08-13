cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)

find_program(CPPCHECK_EXEC NAMES "cppcheck")
if(CPPCHECK_EXEC)
    set(CMAKE_CXX_CPPCHECK "cppcheck")
    set(CMAKE_CXX_CPPCHECK "${CPPCHECK_EXEC}" "--enable=all")
    set(CMAKE_CXX_CPPCHECK "${CMAKE_CXX_CPPCHECK}" "--inconclusive")
    set(CMAKE_CXX_CPPCHECK "${CMAKE_CXX_CPPCHECK}" "--error-exitcode=1")
    set(CMAKE_CXX_CPPCHECK "${CMAKE_CXX_CPPCHECK}" "--suppress=missingIncludeSystem") 
else()
    message("cppcheck not found!")
endif()

add_compile_options(-Wall -Wextra -Wpedantic -Wconversion -Werror -Wshadow)

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