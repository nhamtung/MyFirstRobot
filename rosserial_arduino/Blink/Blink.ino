/* 
 * rosserial Subscriber Example
 * Blinks an LED on callback
 * http://wiki.ros.org/rosserial_arduino/Tutorials/Blink
 *  
 * $roscore (if error run: $killall -9 roscore)
 * $rosrun rosserial_python serial_node.py /dev/ttyUSB0
 * $rostopic pub TungNV_topic std_msgs/Empty --once
 */

#include <ros.h>
#include <std_msgs/Empty.h>

ros::NodeHandle nh;

void messageCb(const std_msgs::Empty & toggle_msg){
  digitalWrite(13, HIGH-digitalRead(13));   // blink the led
}

ros::Subscriber<std_msgs::Empty> sub("TungNV_topic", &messageCb );

void setup()
{ 
  pinMode(13, OUTPUT);
  nh.initNode();
  nh.subscribe(sub);
}

void loop()
{  
  nh.spinOnce();
  delay(1);
}
