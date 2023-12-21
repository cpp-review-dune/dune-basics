# We require CMake version 3.1 to prevent issues
# with dune_enable_all_packages and older CMake versions.
cmake_minimum_required(VERSION 3.28)
project("dune-basics" CXX)

# find dune-common
find_package(dune-common REQUIRED)

# include dune-common modules in the current CMake path
list(APPEND CMAKE_MODULE_PATH ${dune-common_MODULE_PATH})

#include the dune macros
include(DuneMacros)

# start a dune project with information from dune.module
dune_project()

dune_enable_all_packages()

add_subdirectory(src)
add_subdirectory(sandbox)
add_subdirectory(dune)
add_subdirectory(doc)
add_subdirectory(pydemo)
add_subdirectory(cmake/modules)

# finalize the dune project, e.g. generating config.h etc.
finalize_dune_project(GENERATE_CONFIG_H_CMAKE)
