#!/usr/bin/env python
#  and to parse bag files
import csv
import rosbag
import math
import numpy as np
import pdb

import os
import matplotlib.pyplot as plt



#### Specify desired topics, field variables
#desiredTopics = ['/mti/filter/positionEstimate',
#	         '/vehicle/twist']
#desiredFields = [['msg.pose.pose.position.x','msg.pose.pose.position.y'],
#		 ['msg.twist.linear.x','msg.twist.angular.z']]
desiredTopics = ['/mti/filter/position',
	         '/vehicle/twist',
		 '/vehicle/steering_report']
desiredFields = [['msg.longitude','msg.latitude'],
		 ['msg.twist.linear.x','msg.twist.angular.z'],
		 ['msg.steering_wheel_angle_cmd','msg.steering_wheel_angle']]

print "Desired Topics: ",desiredTopics
print "Desired Fields: ",desiredFields

""" To get a list of bag files in the directory """
#bag_file = []
#for file in os.listdir("."):
#    if file.endswith(".bag"):
#        print(os.path.join("/mydir", file))
#	bag_file.append(os.path.join(file))



#### bag file handle
# NAME OF FOLDER AND BAG FILE MUST BE THE SAME
folder = '2019-03-30-17-18-48'
bag = rosbag.Bag('./'+folder+'/'+folder+'.bag')
StartTime = bag.get_start_time()


#### Flatten arrays
desiredFields_ = [y for x in desiredFields for y in x]
n1 = len(desiredTopics)
n2 = len(desiredFields_)

lists = [[] for _ in range(n2)]

####  read_messages
print "Reading messages, please wait"
for topic, msg, t in bag.read_messages(topics=desiredTopics):
    for i in range(n1):
	if topic == desiredTopics[i]:
		for j in range(len(desiredFields[i])):
			for w in range(n2):
				if desiredFields_[w]==desiredFields[i][j]:
					k = w	
					if (len(lists[k]) < 1):
						lists[k].append(['time',topic+'/'+desiredFields_[k]])
					else: 
						lists[k].append([t.to_sec()-StartTime,eval(desiredFields[i][j])])

lists = np.asarray(lists)
bag.close()

#pdb.set_trace()	#for debugging purposes, acts like a breakpoint
#### Write to file
#print "Writing to file, please wait"
#filename = "coords.dat"
#fopen = open(filename,"w")
#for i in range(len(rtkx)):
#    fopen.write(str(rtkx[i][1])+", "+str(rtky[i][1])+"\n")
#fopen.close()
#print "DONE"




cnt= 0
# Make sure it's not empty
print "SAVING DATA, PLEASE WAIT"
for i in range(len(lists)):
	if len(lists[i]) > 0:
		print "SAVING "+ lists[i][0][1] + " PLEASE WAIT"
		np.savetxt(folder+'/'+lists[i][0][1].replace("/","_")+".txt",lists[i][1:-1],delimiter=',',fmt="%s")
		cnt += 1

print "SAVED ",cnt," Files"





			
	

