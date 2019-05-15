from os import listdir
from os.path import isfile
import os
import pdb
import traceback
from bokeh.io import show
from bokeh.layouts import column
from bokeh.models import ColumnDataSource, RangeTool
from bokeh.plotting import figure, gridplot, output_file
import numpy as np

# GRAB DIRECTORIES WITH processed.processed
listdir_ = []
cnt = 1
for root, directories, filenames in os.walk('./'):
	#for directory in directories:
	#	print os.path.join(root,directory)
	for filename in filenames:
		if filename == "processed.processed":
			#print os.path.join(root,filename)
			#print root
			print cnt, root
			listdir_.append(root+"/")
			cnt+=1

def storeProccessed(listdir_,ndx):
#### STORE PROCESSED DATA, USE ndx to indicate the directory
	data_ = []
	name_ = []
	cnt = 1
	for f in listdir(listdir_[ndx]):
		if f.endswith('.txt'):
			#print cnt, f
			txtread = np.genfromtxt(listdir_[ndx]+f,delimiter=',',dtype='float')
			name_.append(f[0:-4])
			data_.append(txtread)
			cnt+=1
	return name_,data_


def returnPltPos(name_,desired):
	for i in range(len(name_)):
		if name_[i] == desired:
			return i

#### for reading waypoints
# with open("odom_waypoints.dat") as waypoints:
# 	waypoints_data = waypoints.read()

# waypoints_data = np.loadtxt("odom_waypoints.dat",delimiter=',')
# #pdb.set_trace()


#### FOR loop to look through each folder on the list
for i in range(len(listdir_)):
	
	name_,data_ = storeProccessed(listdir_,i)
	vehicle_speed_ndx = returnPltPos(name_,"_pacmod_as_tx_vehicle_speed_msg.data")
	throttle_ndx = returnPltPos(name_,"_pacmod_as_rx_accel_cmd_msg.command")

	try:	
		output_file(listdir_[i][2:-1]+".html")

		p1 = figure(title=listdir_[i], x_axis_label='time')
		p1.line(data_[vehicle_speed_ndx][:,0], data_[vehicle_speed_ndx][:,1], legend="PACMod Speed",line_width=2, line_color="red")
		p1.line(data_[throttle_ndx][:,0], data_[throttle_ndx][:,1], legend="throttle input",line_width=2, line_color="blue")
		# p2.line(data_[fakeyaw_ndx][:,0], data_[fakeyaw_ndx][:,1], legend="fakeyaw",line_width=2, line_color="green")
		curr = gridplot([[p1]])
		show(curr)
	except Exception:
		print i, listdir_[i], traceback.format_exc()		
		pass

	
