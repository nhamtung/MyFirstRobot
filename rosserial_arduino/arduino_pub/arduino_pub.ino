/*
 * http://wiki.ros.org/rosserial_arduino/Tutorials/Hello%20World
 * 
 * $roscore (if error run: $killall -9 roscore)
 * $rosrun rosserial_python serial_node.py /dev/ttyUSB0
 * $rostopic echo topic_chatter
 */

#include <ros.h>
#include <std_msgs/String.h>

ros::NodeHandle nh;

std_msgs::String str_msg;
ros::Publisher chatter("topic_chatter", &str_msg);

char hello[50] = "TungNV hello rosserial arduino";

void setup()
{
  nh.initNode();
  nh.advertise(chatter);
}

void loop()
{
  str_msg.data = hello;
  chatter.publish( &str_msg );
  nh.spinOnce();
  delay(1000);
}
