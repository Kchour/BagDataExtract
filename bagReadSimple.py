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

#### SPECIFY DESIRED TOPICS AND FIELDS  ####
desiredTopics = ['/info/plan',
		'/vehicle/odom2',
		'/info/k',
		'/info/states']
desiredFields = [['[i.pose.position.x for i in msg.poses]', '[j.pose.position.y for j in msg.poses]'],
		 ['msg.x','msg.y'],
		 ['msg.data'],
		 ['msg.data[3]', 'msg.data[4]']]	#yaw rate, long vel
		 	


''' FOR ARRAYS, YOU NEED TO SPECIFY EACH ELEMENT SEPARATELY
    OR USE LIST_COMPREHENSION IF THE ARRAY COMES ALL AT ONCE! 
    e.g. /info/plan is an geometry_msgs/PoseStamped topic

    for topic, msg, t in bag.read_messages(topics="/info/plan"): 
	print [i.pose.position.x for i in msg.poses]
'''

#### ------------------------------------ ####

def readMessages(desiredTopics, desiredFields, bag): 
	#### FLATTEN FIELDS
	desiredFields_ = [y for x in desiredFields for y in x]
	n1 = len(desiredTopics)
	n2 = len(desiredFields_)
	lists_ = [[] for _ in range(n2)]	#based on number of desiredFields
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
				# Adding a fix here to "all at once arrays"
				msg_value = eval(desiredFields[i][j])
				try:
					if len(msg_value) > 1:	
						for p in msg_value:			
                                			lists_[k].append([t.to_sec()-StartTime,p])
				except:
					lists_[k].append([t.to_sec()-StartTime,msg_value])

	lists_ = np.asarray(lists_)
	return lists_
	

def processData(lists):
	for i,j in enumerate(lists):

		lists[i] = [[v[0],1.0] if v[1] == True else [v[0],0.0] if v[1] == False else v for v in j]

	return lists

def saveProcessed(lists,f):
        cnt= 0
	# Make sure it's not empty
        try:
                for i in range(len(lists)):
                        print "SAVING DATA, PLEASE WAIT"
                        if len(lists[i]) > 0:
                                print "SAVING "+ lists[i][0][1] + " PLEASE WAIT"
                                if not os.path.exists('./'+f.replace('-','_')[0:-4]):
                                        os.makedirs('./'+f.replace('-','_')[0:-4])
                                np.savetxt('./'+f.replace('-','_')[0:-4]+'/'+lists[i][0][1].replace("/","_")+".txt",lists[i][1:len(lists[i])],delimiter=',',fmt="%f0")
                                cnt += 1
				if f == "rntest9_2019-05-27-15-12-53.bag":
					if i ==3:
						 pdb.set_trace()
                np.savetxt('./'+f.replace('-','_')[0:-4]+'/processed.processed',[])
                #np.savetxt('./'+f.replace('-','_')[0:-4]+'/complete.txt',lists,delimiter=',',fmt="%s")
                print "SAVED ",cnt," Files"
        except Exception as e:
		pdb.set_trace()
                print e, "CHECK THE DESIRED TOPICS AND FIELDS AGAIN"
                pass

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
	    if f == "rntest9_2019-05-27-15-12-53.bag":
		pdb.set_trace()
	    proc_list = processData(proc_list)
            saveProcessed(proc_list,f)
            #print proc_list		

if __name__=="__main__":
	main()

