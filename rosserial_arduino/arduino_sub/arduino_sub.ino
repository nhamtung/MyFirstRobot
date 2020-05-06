/* 
 * rosserial Subscriber Example
 * Blinks an LED on callback
 * http://wiki.ros.org/rosserial_arduino/Tutorials/Blink
 *  
 * $roscore (if error run: $killall -9 roscore)
 * $rosrun rosserial_python serial_node.py /dev/ttyUSB0
 * $rostopic pub TungNV_topic std_msgs/String TungNV_hello
 */

#include <ros.h>
#include <std_msgs/String.h>

ros::NodeHandle nh;
String msg = "a";

void messageCb(const std_msgs::String & toggle_msg)
{
  msg = toggle_msg.data;
  if(msg == "TungNV_hello"){
    msg = "good";
  }
}

ros::Subscriber<std_msgs::String> sub("TungNV_topic", &messageCb );

void setup()
{ 
  Serial.begin(57600);
  nh.initNode();
  nh.subscribe(sub);
  Serial.println("READY!");
}

void loop()
{  
  Serial.println(msg);
  nh.spinOnce();
  delay(1);
}
