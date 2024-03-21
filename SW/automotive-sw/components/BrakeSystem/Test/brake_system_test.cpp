// #include <googletest/googletest/include/gtest/gtest.h>
extern "C"{
    #include "../Inc/brake_system.h"
}
#include<gtest/gtest.h>

TEST(BrakeSystemTest, apply_brakes) {
    // Act
    int status = apply_brakes();

    // Assert
    ASSERT_TRUE(status==0);
}
TEST(BrakeSystemTest, test_brakes) {
    // Arrange
    int initial_speed = 100;
    int expected_speed = 0;
    // Act
    int speed = test_brakes(initial_speed);

    // Assert
    ASSERT_EQ(expected_speed, speed);
}
TEST(BrakeSystem, test_front_brakes) {
    // Arrange
    int initial_speed = 100;
    int expected_speed = 0;
    // Act
    int speed = test_brakes(initial_speed);

    // Assert
    ASSERT_EQ(expected_speed, speed);
}

TEST(BrakeSystem, test_emergency_brakes) {
    // Arrange
    int initial_speed = 100;
    int expected_speed = 0;
    // Act
    int speed = test_brakes(initial_speed);

    // Assert
    ASSERT_EQ(expected_speed, speed);
}

TEST(BrakeSystem, test_hand_break) {
    // Arrange
    int initial_speed = 100;
    int expected_speed = 0;
    // Act
    int speed = test_brakes(initial_speed);

    // Assert
    ASSERT_EQ(expected_speed, speed);
}

TEST(BrakeSystemTest, test_rear_brakes) {
    // Arrange
    int initial_speed = 100;
    int expected_speed = 0;
    // Act
    int speed = test_brakes(initial_speed);

    // Assert
    ASSERT_EQ(expected_speed, speed);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
