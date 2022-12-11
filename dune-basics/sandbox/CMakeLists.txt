add_executable("hello-linux" hello-linux.cc)
add_executable("dune-math-constants" dune-math-constants.cc)

find_package(fmt)
add_executable("dune-fmt" dune-fmt.cc)
target_link_libraries("dune-fmt" fmt::fmt)