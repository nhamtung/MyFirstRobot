#!/usr/bin/env python
# http://wiki.ros.org/rospy_tutorials/Tutorials/WritingImagePublisherSubscriber

# RUN:
# $roscore
# $source devel/setup.bash
# $rosrun example_pkg subImage.py

import rospy
from std_msgs.msg import String
from sensor_msgs.msg import CompressedImage
import numpy as np
import cv2
from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import PointCloud2

TOPIC = [
		"chatter_topic",#0
		"scan",			#1
		"cloud"			#2		
		]

topic = TOPIC[1]


def TopicScan(msg):
	print ("INFO - seqence: " + str(msg.header.seq))
	print ("INFO - stamp.secs: " + str(msg.header.stamp.secs))
	print ("INFO - stamp.nsecs: " + str(msg.header.stamp.nsecs))
	print ("INFO - frame_id: " + str(msg.header.frame_id))
	print ("INFO - angle_min: " + str(msg.angle_min))
	print ("INFO - angle_max: " + str(msg.angle_max))
	print ("INFO - angle_increment: " + str(msg.angle_increment))
	print ("INFO - time_increment: " + str(msg.time_increment))
	print ("INFO - scan_time: " + str(msg.scan_time))
	print ("INFO - range_min: " + str(msg.range_min))
	print ("INFO - range_max: " + str(msg.range_max))
	print ("INFO - leng.data: " + str(len(msg.ranges)))
	print ("INFO - ranges: " + str(msg.ranges))

def TopicCloud(msg):
	print ("INFO - seqence: " + str(msg.header.seq))
	print ("INFO - stamp.secs: " + str(msg.header.stamp.secs))
	print ("INFO - stamp.nsecs: " + str(msg.header.stamp.nsecs))
	print ("INFO - frame_id: " + str(msg.header.frame_id))
	print ("INFO - height: " + str(msg.height))
	print ("INFO - width: " + str(msg.width))
	print ("INFO - is_bigendian: " + str(msg.is_bigendian))
	print ("INFO - point_step: " + str(msg.point_step))
	print ("INFO - row_step: " + str(msg.row_step))
	print ("INFO - is_dense: " + str(msg.is_dense))
	print ("INFO - leng.data: " + str(len(msg.data)))
	print ("INFO - data: " + str(msg.data))

def callback(msg):
	global topic
	print("\n\nReceive data of topic /" + topic)
	if topic == TOPIC[1]:
		TopicScan(msg)
	if topic == TOPIC[2]:
		TopicCloud(msg)
    
def listener():
    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener')
    print("create node: listener")

    global topic
    if topic == TOPIC[0]:
    	rospy.Subscriber(topic, CompressedImage, callback)
    if topic == TOPIC[1]:
    	rospy.Subscriber(topic, LaserScan, callback)
    if topic == TOPIC[2]:
    	rospy.Subscriber(topic, PointCloud2, callback)
    print("Subscriber to topic /" + topic)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()

