#!/usr/bin/env python
import rospy, tf, tf2_ros, geometry_msgs.msg, nav_msgs.msg

def callback(data):
	bc = tf2_ros.TransformBroadcaster()
	t = geometry_msgs.msg.TransformStamped()
	t.header.stamp = rospy.Time.now()
	t.header.frame_id = "odom"
	t.child_frame_id = "base_footprint"
	t.transform.translation = data.pose.pose.position
	t.transform.rotation = data.pose.pose.orientation
	bc.sendTransform(t)
	rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.pose.pose.position.x)

if __name__ == "__main__":
	rospy.init_node("odomtransformer")

	rospy.Subscriber("scanmatch_odom", nav_msgs.msg.Odometry, callback)
	rospy.spin()
