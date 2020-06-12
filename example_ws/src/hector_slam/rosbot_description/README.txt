link: https://github.com/husarion/rosbot_description

1. Launch the Gazebo simulation:
- $roslaunch rosbot_description rosbot_rviz_gmapping.launch

2. Start teleop:
- $roslaunch rosbot_navigation rosbot_teleop.launch

3. Save map:
- $rosrun map_server map_saver -f ~/ros_workspace/src/rosbot_description/src/rosbot_navigation/maps/test_map

4. Open map:
- $roslaunch rosbot_description rosbot_rviz_amcl.launch
