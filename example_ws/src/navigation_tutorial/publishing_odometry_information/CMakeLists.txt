cmake_minimum_required(VERSION 3.0.2)
project(publishing_odometry_information)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  tf
  nav_msgs
)

generate_messages(DEPENDENCIES std_msgs)

catkin_package()

include_directories(
# include ${catkin_INCLUDE_DIRS}
)

include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(pub_odometry_transform src/pub_odometry_transform.cpp)
target_link_libraries(pub_odometry_transform ${catkin_LIBRARIES})
add_dependencies(pub_odometry_transform publishing_odometry_information_generate_messages_cpp)