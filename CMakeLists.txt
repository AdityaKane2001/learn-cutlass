cmake_minimum_required(VERSION 3.9.1)
enable_language(CUDA)
set (CMAKE_CXX_STANDARD 17)
project(cuda LANGUAGES CXX CUDA)

## Add files
file(GLOB_RECURSE cppfiles src/*.cpp)
file(GLOB_RECURSE cudafiles src/*.cu)
file(GLOB_RECURSE headerfiles include/*.h)

## Register executables
add_executable(cuda ${cudafiles} ${cppfiles} ${headerfiles})

## Add include
target_include_directories(cuda PUBLIC cutlass/include)
