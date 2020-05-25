
1. Connect hardware of LMS100:
- Supply voltage 24VDC to LMS100
- Brown wire is 24VDC
- Blue wire is GND
- Yellow and black wire do not use

2. Connect LMS100 to PC
- IP of sick lms100: 169.254.178.161 port 2112 (or 2111)
- Connect LMS100 to PC via ethenet
- Config manual ip of ethernet in PC: 169.254.178.xxx - 255.255.0.0 - 169.254.1.1
- Check connect LMS100 and PC via ethernet: $ping 169.254.178.161 (success result: 64 bytes from 169.254.178.161: icmp_seq=12 ttl=64 time=3.27 ms)

3. RUN:
- $cd ./example_ws
- $catkin_make
- $source devel/setup.bash
- $roslaunch sick_scan sick_lms_1xx.launch

4. Config Rviz:
- Change Fixed Frame field to laser
- Add visualization: LaserScan 
- Change Topic field to /scan
- Or add visualazion: PointCloud2 
- Change Topic field to /cloud