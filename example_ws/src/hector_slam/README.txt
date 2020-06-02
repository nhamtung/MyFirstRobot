Link: http://wiki.ros.org/hector_slam

#######################################################
		Build map with sick LMS100

1. Test LMS100 with sick_scan pkg

2. Mapping with hector_mapping pkg:
- $roslaunch hector_mapping mapping_default.launch
- $roslaunch sick_scan mapping_sick_lms_1xx.launch

3. Save Map with map_server:
- $rosrun map_server map_saver -f ~/TungNV/MyFirstRobot/example_ws/src/hector_slam/hector_geotiff/maps/test_map

4. Save map with hector_geotiff pkg:
- $roslaunch hector_geotiff geotiff_mapper.launch
- $rostopic pub syscommand std_msgs/String "savegeotiff"
- map saved in /hector_geotiff/maps

#######################################################
		Build map using Logged Data
Link: http://library.isr.ist.utl.pt/docs/roswiki/hector_slam(2f)Tutorials(2f)MappingUsingLoggedData.html#Generating_a_GeoTiff_map

1. Check install hector_slam
-  $rosmake hector_slam

2. Download .bag file:
- $wget http://tu-darmstadt-ros-pkg.googlecode.com/files/Team_Hector_MappingBox_RoboCup_2011_Rescue_Arena.bag

3. Start the hector_slam system:
- $roslaunch hector_slam_launch tutorial.launch

4. Open Map (direct to .bag file)
- $rosbag play Team_Hector_MappingBox_RoboCup_2011_Rescue_Arena.bag  --clock

5. Save Map with map_server:
- $rosrun map_server map_saver -f ~/TungNV/MyFirstRobot/example_ws/src/hector_slam/hector_geotiff/maps/test_map

6. Save Map with hector_geotiff:
- $rostopic pub syscommand std_msgs/String "savegeotiff"
- map saved in /hector_geotiff/maps
