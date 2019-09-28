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
import scipy.signal

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
#pdb.set_trace()


#### FOR loop to look through each folder on the list
for i in range(len(listdir_)):
	
	name_,data_ = storeProccessed(listdir_,i)

	long_ndx = returnPltPos(name_,"_vehicle_odom2_msg.x")
	lat_ndx = returnPltPos(name_,"_vehicle_odom2_msg.y")
	height_ndx = returnPltPos(name_, "_vectornav_gps_msg.LLA.z")

	acc_x_ndx = returnPltPos(name_,"_vectornav_imu_msg.Gyro.x")
	acc_y_ndx = returnPltPos(name_,"_vectornav_imu_msg.Gyro.y")
	acc_z_ndx = returnPltPos(name_,"_vectornav_imu_msg.Gyro.z")

	vecvelocity_ndx = returnPltPos(name_,"_vectornav_veltest_msg.data")
	pacvelocity_ndx = returnPltPos(name_,"_as_tx_vehicle_speed_msg.data")
	yaw_ndx = returnPltPos(name_,"_vehicle_odom2_msg.yaw")

	steer_ndx = returnPltPos(name_,"_as_rx_steer_cmd_msg.command")
	throttle_ndx = returnPltPos(name_,"_as_rx_accel_cmd_msg.command")
	brake_ndx = returnPltPos(name_,"_as_rx_brake_cmd_msg.command")

	manualthrottle_ndx = returnPltPos(name_,"_parsed_tx_accel_rpt_msg.manual_input")
	throttleout_ndx  = returnPltPos(name_,"_parsed_tx_accel_rpt_msg.output")
	throttlerptcom_ndx = returnPltPos(name_,"_parsed_tx_accel_rpt_msg.command")
	brakeout_ndx = returnPltPos(name_,"_parsed_tx_brake_rpt_msg.command")

	linear_acc = np.gradient(data_[vecvelocity_ndx][:,1],0.02)
	linear_acc_filter  = np.array(scipy.signal.savgol_filter(linear_acc, 51,3))

	linear_acc_time = np.array(data_[vecvelocity_ndx][:,0])
	linear_acc_ndx = np.column_stack((linear_acc_time, linear_acc))
	linear_acc_filter_ndx = np.column_stack((linear_acc_time, linear_acc_filter))

	try:	
		output_file(listdir_[i][2:-1]+".html")

		p1 = figure(title=listdir_[i], x_axis_label='longitude (m)', y_axis_label='latitude (m)')
		p1.line(data_[long_ndx][:,1] - data_[long_ndx][0,1], data_[lat_ndx][:,1] - data_[lat_ndx][0,1],  legend="Path Driven",line_width=2, line_color="red")

		p2 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='acceleration (m/s^2)')
		p2.line(data_[acc_x_ndx][:,0], data_[acc_x_ndx][:,1], legend="Acceleration X",line_width=2, line_color="red")
		p2.line(data_[acc_y_ndx][:,0], data_[acc_y_ndx][:,1], legend="Acceleration Y",line_width=2, line_color="blue")
		p2.line(data_[acc_z_ndx][:,0], data_[acc_z_ndx][:,1], legend="Acceleration Z",line_width=2, line_color="green")

		p3 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='velocity (m/s) or acceleration (m/s^2)')
		p3.line(data_[vecvelocity_ndx][:,0], data_[vecvelocity_ndx][:,1], legend="VectorNav Velocity",line_width=2, line_color="red")
		# p3.line(data_[throttle_ndx][:,0], data_[throttle_ndx][:,1], legend="Throttle Command",line_width=2, line_color="blue")

		# p3.line(linear_acc_ndx[:,0], linear_acc_ndx[:,1], legend="Linear Acceleration",line_width=2, line_color="green")
		p3.line(linear_acc_filter_ndx[:,0], linear_acc_filter_ndx[:,1], legend="Filtered Linear Acceleration",line_width=2, line_color="cyan")

		# p3.line(data_[throttleout_ndx][:,0], data_[throttleout_ndx][:,1], legend="Throttle Output",line_width=2, line_color="cyan")
		# p3.line(data_[pacvelocity_ndx][:,0], data_[pacvelocity_ndx][:,1], legend="PACMod Velocity",line_width=2, line_color="green")
		p3.line(data_[brake_ndx][:,0], data_[brake_ndx][:,1], legend="Brake Command",line_width=2, line_color="green")
		# p3.line(data_[brakeout_ndx][:,0], data_[brakeout_ndx][:,1], legend="Brake Output",line_width=2, line_color="black")

		# p4 = figure(title=listdir_[i], x_axis_label='time', y_axis_label='throttle')
		# p4.line(data_[throttle_ndx][:,0], data_[throttle_ndx][:,1]*100, legend="Throttle % Command",line_width=2, line_color="red")
		# p4.line(data_[throttleout_ndx][:,0], data_[throttleout_ndx][:,1]*100, legend="Throttle % Output",line_width=2, line_color="blue")
		# p4.line(data_[throttlerptcom_ndx][:,0], data_[throttlerptcom_ndx][:,1]*100, legend="Throttle % Report Command",line_width=2, line_color="green")

		curr = gridplot([[ p3]])
		show(curr)

	except Exception:
		print i, listdir_[i], traceback.format_exc()		
		pass

	
