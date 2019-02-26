#!/usr/bin/env python
#  and to parse bag files
import csv
import rosbag
import math
import numpy as np
import pdb

import os


#### Specify desired topics, field variables
desiredTopics = ['/gps/rtkfix',
	         '/vehicle/twist']
desiredFields = [['msg.pose.pose.position.x','msg.pose.pose.position.y'],
		 ['msg.twist.linear.x','msg.twist.angular.z']]

""" To get a list of bag files in the directory """
#bag_file = []
#for file in os.listdir("."):
#    if file.endswith(".bag"):
#        print(os.path.join("/mydir", file))
#	bag_file.append(os.path.join(file))

#### bag file handle
bag = rosbag.Bag('2019-02-22-16-01-52.bag')
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
			for k in range(n2):
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


print "SAVING DATA, PLEASE WAIT"
for i in range(len(lists)):
	print "SAVING "+ lists[i][0][1] + " PLEASE WAIT"
	np.savetxt(lists[i][0][1].replace("/","_")+".txt",lists[i],delimiter=',',fmt="%s")







			
	

