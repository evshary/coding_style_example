cmake_minimum_required(VERSION 3.10)

project(test_project)

aux_source_directory(${CMAKE_SOURCE_DIR} SOURCES)
file(GLOB H_FILES "${CMAKE_SOURCE_DIR}/*.h")
file(GLOB C_FILES "${CMAKE_SOURCE_DIR}/*.c")

add_executable(test_exe ${SOURCES})

# Add ctest for uncrustify
add_custom_target(sh_target ALL
                  COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_SOURCE_DIR}/uncrustify.sh" "${CMAKE_BINARY_DIR}/uncrustify.sh"
                  COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_SOURCE_DIR}/uncrustify_example.cfg" "${CMAKE_BINARY_DIR}/uncrustify_example.cfg")
enable_testing()
add_test("lint_test" ./uncrustify.sh ${C_FILES} ${H_FILES})
