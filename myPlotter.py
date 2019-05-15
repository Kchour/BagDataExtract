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

waypoints_data = np.loadtxt("odom_waypoints.dat",delimiter=',')
#pdb.set_trace()


#### FOR loop to look through each folder on the list
for i in range(len(listdir_)):
	
	name_,data_ = storeProccessed(listdir_,i)
	lat_ndx = returnPltPos(name_,"_vehicle_odom2_msg.y")
	long_ndx = returnPltPos(name_,"_vehicle_odom2_msg.x")

	vehicle_speed_ndx = returnPltPos(name_,"_as_tx_vehicle_speed_msg.data")
	vector_speed_ndx = returnPltPos(name_,"_vectornav_velTEST_msg.data")

	yaw_ndx = returnPltPos(name_,"_vehicle_odom2_msg.yaw")

	steer_ndx = returnPltPos(name_,"_as_rx_steer_cmd_msg.command")
	throttle_ndx = returnPltPos(name_,"_as_rx_accel_cmd_msg.command")
	brake_ndx = returnPltPos(name_,"_as_rx_brake_cmd_msg.command")

	try:	
		output_file(listdir_[i][2:-1]+".html")
		p1 = figure(title=listdir_[i], x_axis_label='longitude', y_axis_label='latitude')
		p1.line(data_[long_ndx][:,1], data_[lat_ndx][:,1],legend="Path Driven",line_width=2, line_color="red")
		p1.line(waypoints_data[:,0], waypoints_data[:,1],legend="Waypoints",line_width=2, line_color="blue")

		p2 = figure(title=listdir_[i], x_axis_label='time')
		p2.line(data_[vehicle_speed_ndx][:,0], data_[vehicle_speed_ndx][:,1], legend="PACMod Speed",line_width=2, line_color="red")
		p2.line(data_[vector_speed_ndx][:,0], data_[vector_speed_ndx][:,1], legend="VectorNav Speed",line_width=2, line_color="blue")
		# p2.line(data_[fakeyaw_ndx][:,0], data_[fakeyaw_ndx][:,1], legend="fakeyaw",line_width=2, line_color="green")

		p3 = figure(title=listdir_[i], x_axis_label='time')
		p3.line(data_[steer_ndx][:,0], data_[steer_ndx][:,1], legend="Steering Command",line_width=2, line_color="red")

		p4 = figure(title=listdir_[i], x_axis_label='time')
		p4.line(data_[throttle_ndx][:,0], data_[throttle_ndx][:,1], legend="Throttle % Command",line_width=2, line_color="red")
		p4.line(data_[brake_ndx][:,0], data_[brake_ndx][:,1], legend="Brake % Command",line_width=2, line_color="blue")
		curr = gridplot([[p1, p2, p3, p4]])
		show(curr)
	except Exception:
		print i, listdir_[i], traceback.format_exc()		
		pass

	
