#!/usr/bin/env python
#  and to parse bag files
import csv
import rosbag
import math
import numpy as np
import pdb

import os
from os import listdir
import matplotlib.pyplot as plt

#### SPECIFY DISIRED TOPICS AND FIELDS  ####
desiredTopics = ['/vectornav/fix',
	         '/as_tx/vehicle_speed',
		 '/vectornav/veltest',
                 '/vectornav/veltest2',
                 '/vectornav/veltestY',
                 '/vehicle/odom2',
                 '/vehicle/odom1',
                 '/vectornav/gps',
                 '/as_rx/brake_cmd',
                 '/as_rx/steer_cmd',
                 '/as_rx/accel_cmd',
                 '/vectornav/ins',
                 '/vectornav/imu',
                 '/parsed_tx/accel_rpt',
                 '/parsed_tx/brake_rpt',
                 '/desired_velocity',
                 '/desired_acceleration',
                 '/desired_yaw',
                 '/lateral_acceleration',
                 '/desired_yaw_rate']
desiredFields = [['msg.latitude','msg.longitude'],
                 ['msg.data'],
                 ['msg.data'],
                 ['msg.data'],
                 ['msg.data'],
		 ['msg.x','msg.y','msg.yaw'],                   # Need to check odom2 
		 ['msg.twist.twist.angular.z'],                 # Need to check odom1
                 ['msg.LLA.x', 'msg.LLA.y', 'msg.LLA.z'],
                 ['msg.command'],                               # Need to check brake_cmd
                 ['msg.command'],
                 ['msg.command'],
                 ['msg.LLA.x', 'msg.LLA.y'],
                 ['msg.Gyro.x', 'msg.Gyro.y', 'msg.Gyro.z', 'msg.Accel.x', 'msg.Accel.y', 'msg.Accel.z'],
                 ['msg.manual_input', 'msg.output', 'msg.command'],
                 ['msg.command'],
                 ['msg.data'],
                 ['msg.data'],
                 ['msg.data'],
                 ['msg.data'],
                 ['msg.data']]	                        #### FOR ARRAYS YOU NEED TO SPECIFY EACH ELEMENT SEPARATELY

#### ------------------------------------ ####

def readMessages(desiredTopics, desiredFields, bag): 
	#### FLATTEN FIELDS
	desiredFields_ = [y for x in desiredFields for y in x]
	n1 = len(desiredTopics)
	n2 = len(desiredFields_)
	lists_ = [[] for _ in range(n2)]
	#### GET TIME
	StartTime = bag.get_start_time()
	#### READ THE MESSAGES IN THE MOST INEFFICIENT MANNER
	print "Reading messages, please wait"
        for topic, msg, t in bag.read_messages(topics=desiredTopics):
            for i in range(n1):
		if topic == desiredTopics[i]:
			for j in range(len(desiredFields[i])):
                                k = 0
                                for w in range(i+1):
                                    k+=len(desiredFields[w])
                                k -=(len(desiredFields[i])- j)
                                if (len(lists_[k]) < 1):
                                        lists_[k].append(['time',topic+'/'+desiredFields_[k]])
                                else: 
                                        lists_[k].append([t.to_sec()-StartTime,eval(desiredFields[i][j])])

	lists_ = np.asarray(lists_)
	return lists_
	

def saveProcessed(lists,f):
        cnt= 0
	# Make sure it's not empty
	print "SAVING DATA, PLEASE WAIT"
	for i in range(len(lists)):
		if len(lists[i]) > 0:
                        print "SAVING "+ lists[i][0][1] + " PLEASE WAIT"
                        if not os.path.exists('./'+f.replace('-','_')[0:-4]):
                            os.makedirs('./'+f.replace('-','_')[0:-4])
                        np.savetxt('./'+f.replace('-','_')[0:-4]+'/'+lists[i][0][1].replace("/","_")+".txt",lists[i][1:-1],delimiter=',',fmt="%f")
			cnt += 1
	np.savetxt('./'+f.replace('-','_')[0:-4]+'/processed.processed',[])
	#np.savetxt('./'+f.replace('-','_')[0:-4]+'/complete.txt',lists,delimiter=',',fmt="%s")
	print "SAVED ",cnt," Files"

def main(): 
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
            proc_list = readMessages(desiredTopics, desiredFields, bag)
            bag.close()
            saveProcessed(proc_list,f)
            #print proc_list		

if __name__=="__main__":
	main()

