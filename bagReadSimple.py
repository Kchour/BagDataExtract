#!/usr/bin/env python
#  and to parse bag files
import csv
import rosbag
import math
import numpy as np
import pdb

from os import listdir
import matplotlib.pyplot as plt
#### SPECIFY DISIRED TOPICS AND FIELDS
desiredTopics = ['/pacmod/as_rx/accel_cmd',
	         '/pacmod/as_rx/brake_cmd',
		 '/vehicle/steering_report']
desiredFields = [['msg.longitude','msg.latitude'],
		 ['msg.twist.linear.x','msg.twist.angular.z'],
		 ['msg.steering_wheel_angle_cmd','msg.steering_wheel_angle']]
def readMessages(desiredTopics, desiredFields, bag): 
	#### FLATTEN FIELDS
	desiredFields_ = [y for x in desiredFields for y in x]
	n1 = len(desiredTopics)
	n2 = len(desiredFields_)
	lists_ = [[] for _ in range(n2)]
	#### GET TIME
	StartTime = bag.get_start_time()
	pdb.set_trace()
	#### READ THE MESSAGES IN THE MOST INEFFICIENT MANNER
	print "Reading messages, please wait"
	for topic, msg, t in bag.read_messages(topics=desiredTopics):
	    for i in range(n1):
		if topic == desiredTopics[i]:
			for j in range(len(desiredFields[i])):
				for w in range(n2):
					if desiredFields_[w]==desiredFields[i][j]:
						k = w	
						if (len(lists_[k]) < 1):
							lists_[k].append(['time',topic+'/'+desiredFields_[k]])
						else: 
							lists[k].append([t.to_sec()-StartTime,eval(desiredFields[i][j])])

	lists_ = np.asarray(lists_)
	return lists_


def saveProcessed(lists):
	cnt= 0
	# Make sure it's not empty
	print "SAVING DATA, PLEASE WAIT"
	for i in range(len(lists)):
		if len(lists[i]) > 0:
			print "SAVING "+ lists[i][0][1] + " PLEASE WAIT"
			np.savetxt(folder+'/'+lists[i][0][1].replace("/","_")+".txt",lists[i][1:-1],delimiter=',',fmt="%s")
			cnt += 1

	print "SAVED ",cnt," Files"

""" To get a list of bag files in the directory """
baglist = []
for f in listdir("./"):
	if f.endswith('.bag'):
		baglist.append(f)
	
#### bag file handle
# NAME OF FOLDER AND BAG FILE MUST BE THE SAME
#folder = '2019-03-30-17-18-02'
#bag = rosbag.Bag('./'+folder+'/'+folder+'.bag')
#### Specify desired topics, field variables

print "Desired Topics: ",desiredTopics
print "Desired Fields: ",desiredFields

for f in baglist:
	bag = rosbag.Bag(f)
	list_ = readMessages(desiredTopics, desiredFields, bag)
	bag.close()
	print list_			
	

