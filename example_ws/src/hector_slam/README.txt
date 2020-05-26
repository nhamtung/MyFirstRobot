
1. Test LMS100 with sick_scan pkg

2. Mapping with hector_mapping pkg:
- $roslaunch hector_mapping mapping_default.launch
- $roslaunch sick_scan mapping_sick_lms_1xx.launch

3. Save map with hector_geotiff pkg:
- $roslaunch hector_geotiff geotiff_mapper.launch
- $rostopic pub syscommand std_msgs/String "savegeotiff"
- map saved in /hector_geotiff/maps