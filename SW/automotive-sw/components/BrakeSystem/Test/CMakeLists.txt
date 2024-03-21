include(GoogleTest)
set(SOURCE                  brake_system_test.cpp)
# set(EXECUTABLE_OUTPUT_PATH  ${CMAKE_BINARY_DIR}/out/Test)
set(EXECUTABLE_OUTPUT_PATH  ${CMAKE_BINARY_DIR}/out/components/BrakeSystem/test)

add_executable(brake_system_test ${SOURCE})
target_link_libraries(brake_system_test PUBLIC 
    gtest_main
    BrakeSystem
)

add_test(
    NAME brake_system_test
    COMMAND brake_system_test
)

add_custom_target(execute_brake_system_test 
    COMMAND brake_system_test --gtest_output="xml:${CMAKE_BINARY_DIR}/out/components/BrakeSystem/test/brake_system_test_report.xml"
)