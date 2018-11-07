set (CMAKE_CXX_STANDARD 11)
cmake_minimum_required (VERSION 2.8)
project (myProject)

# find_package(yaml-cpp REQUIRED)
# include_directories("${yaml-cpp_INCLUDE_DIRS}")
# message(STATUS "Using yaml-cpp version ${yaml-cpp_VERSION}")


find_package(libpointmatcher 1.1.0 REQUIRED)
include_directories("${libpointmatcher_INCLUDE_DIRS}")
message(STATUS "Using libpointmatcher version ${libpointmatcher_VERSION}")

# add_executable(myProgram myProgram.cpp)
add_executable(myProgram icp_customized.cpp)
# add_executable(myProgram pmicp)
target_link_libraries(myProgram ${libpointmatcher_LIBRARIES})


