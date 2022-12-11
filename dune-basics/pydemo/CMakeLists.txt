# find_package(Python COMPONENTS Interpreter REQUIRED)

dune_python_add_test(NAME FieldVectorPython
                     SCRIPT dune-common_python.py
                     WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
                     COMMAND ${Python_EXECUTABLE})

# dune_add_test(NAME FieldVectorPython
# COMMAND ${Python_EXECUTABLE} WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/pydemo/dune-common_python.py
# )