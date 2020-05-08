/*
 * rosserial PubSub Example
 * Prints "hello world!" and toggles led
 * 
 * http://wiki.ros.org/rosserial_arduino/Tutorials/Logging
 * $roscore (if not run $killall -9 roscore)  
 * $rosrun rosserial_python serial_node.py /dev/ttyUSB0
 * $rostopic echo topic_chatter
 */

#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>

ros::NodeHandle  nh;
std_msgs::String str_msg;
ros::Publisher chatter("topic_chatter", &str_msg);

char hello[14] = "TungNV hello!";

char debug[]= "debug statements";
char info[] = "infos";
char warn[] = "warnings";
char error[] = "errors";
char fatal[] = "fatalities";

void setup(){
  pinMode(13, OUTPUT);
  nh.initNode();
  nh.advertise(chatter);
}

void loop(){
  str_msg.data = hello;
  chatter.publish( &str_msg );
  
  nh.logdebug(debug);
  nh.loginfo(info);
  nh.logwarn(warn);
  nh.logerror(error);
  nh.logfatal(fatal);
  
  nh.spinOnce();
  delay(500);
}
