

# run: 
#- $python ./src/pub_sub/scrips/subLaserOdom.py


import rospy
from std_msgs.msg import String
from sensor_msgs.msg import CompressedImage
import numpy as np
import cv2
from sensor_msgs.msg import LaserScan
from sensor_msgs.msg import PointCloud2

from nav_msgs.msg import Odometry

import csv

row_list = [["time", "x", "y", "phi"]]

def SaveCSVfile(time, x, y, yaw):
	global row_list
	element = [time, x, y, yaw]
	row_list.append(element)
	
	with open('src/pub_sub/export/location.csv', 'w') as file:
		writer = csv.writer(file)
		writer.writerows(row_list)
	print ("Save location to CVS file!")

def quaternion_to_euler(w, x, y, z):
	"""Converts quaternions with components w, x, y, z into a tuple (roll, pitch, yaw)"""
	sinr_cosp = 2 * (w * x + y * z)
	cosr_cosp = 1 - 2 * (x**2 + y**2)
	roll = np.arctan2(sinr_cosp, cosr_cosp)

	sinp = 2 * (w * y - z * x)
	pitch = np.where(np.abs(sinp) >= 1, np.sign(sinp) * np.pi / 2, np.arcsin(sinp))

	siny_cosp = 2 * (w * z + x * y)
	cosy_cosp = 1 - 2 * (y**2 + z**2)
	yaw = np.arctan2(siny_cosp, cosy_cosp)

	return roll, pitch, yaw

def printMsg(msg):
	print ("INFO - X: " + str(msg.pose.pose.position.x))
	print ("INFO - Y: " + str(msg.pose.pose.position.y))
	print ("INFO - Z: " + str(msg.pose.pose.orientation.z))
	print ("INFO - W: " + str(msg.pose.pose.orientation.w))

def printRollPitchYaw(roll, pitch, yaw):
	print ("INFO - roll : " + str(roll))
	print ("INFO - pitch: " + str(pitch))

def printXYYaw(time, x, y, yaw):
	print ("INFO -time: " + str(time))
	print ("INFO -  X : " + str(x))
	print ("INFO -  Y : " + str(y))
	print ("INFO - Yaw: " + str(yaw))

def callback(msg):
	print("\n\nReceive data of topic /odom_laser")
	# printMsg(msg)
	time = msg.header.stamp.secs
	x = msg.pose.pose.position.x
	y = msg.pose.pose.position.y
	roll, pitch, yaw = quaternion_to_euler(msg.pose.pose.orientation.w, msg.pose.pose.orientation.x, msg.pose.pose.orientation.y, msg.pose.pose.orientation.z)
	printXYYaw(time, x, y, yaw)
	# printRollPitchYaw(roll, pitch, yaw)
	SaveCSVfile(time, x, y, yaw)
    
def listener():
    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('listener')
    print("create node: listener")

    rospy.Subscriber("odom_laser", Odometry, callback)	
    print("Subscriber to topic /odom_laser")

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    listener()

