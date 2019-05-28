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
desiredTopics = ['/result_t1',
                 '/result_t2',
		 '/vehicle/twistfake',
		 '/vehicle/dbw_enabled']
desiredFields = [['msg.data'],
                 ['msg.data'],
		 ['msg.twist.angular.z'],
		 ['msg.data']]	#### FOR ARRAYS YOU NEED TO SPECIFY EACH ELEMENT SEPARATELY

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
                                lists_[k].append([t.to_sec()-StartTime,eval(desiredFields[i][j])])

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
                                np.savetxt('./'+f.replace('-','_')[0:-4]+'/'+lists[i][0][1].replace("/","_")+".txt",lists[i][1:len(lists[i])],delimiter=',',fmt="%f")
                                cnt += 1
				if f == "rntest9_2019-05-27-15-12-53.bag":
					if i ==3:
						 pdb.set_trace()
                np.savetxt('./'+f.replace('-','_')[0:-4]+'/processed.processed',[])
                #np.savetxt('./'+f.replace('-','_')[0:-4]+'/complete.txt',lists,delimiter=',',fmt="%s")
                print "SAVED ",cnt," Files"
        except Exception as e:
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

