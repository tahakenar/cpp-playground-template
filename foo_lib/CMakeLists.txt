# Add the foo library
add_library(foo_lib STATIC src/foo_class.cpp)

# Include directories for the foo library
target_include_directories(foo_lib PUBLIC include)