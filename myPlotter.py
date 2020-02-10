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
from scipy.spatial import distance

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

	long_ndx = returnPltPos(name_,"_vehicle_odom2_msg.x")
	lat_ndx = returnPltPos(name_,"_vehicle_odom2_msg.y")
	height_ndx = returnPltPos(name_, "_vectornav_gps_msg.LLA.z")

	acc_x_ndx = returnPltPos(name_,"_vectornav_imu_msg.Gyro.x")
	acc_y_ndx = returnPltPos(name_,"_vectornav_imu_msg.Gyro.y")
	acc_z_ndx = returnPltPos(name_,"_vectornav_imu_msg.Gyro.z")

	ang_vel_x_ndx = returnPltPos(name_,"_vectornav_imu_msg.Accel.x")
	ang_vel_y_ndx = returnPltPos(name_,"_vectornav_imu_msg.Accel.y")
	ang_vel_z_ndx = returnPltPos(name_,"_vectornav_imu_msg.Accel.z")

	vecvelocity_ndx = returnPltPos(name_,"_vectornav_veltest2_msg.data")
	pacvelocity_ndx = returnPltPos(name_,"_as_tx_vehicle_speed_msg.data")
	yaw_ndx = returnPltPos(name_,"_vehicle_odom2_msg.yaw")

	steer_ndx = returnPltPos(name_,"_as_rx_steer_cmd_msg.command")
	throttle_ndx = returnPltPos(name_,"_as_rx_accel_cmd_msg.command")
	brake_ndx = returnPltPos(name_,"_as_rx_brake_cmd_msg.command")

	throttlemanual_ndx = returnPltPos(name_,"_parsed_tx_accel_rpt_msg.manual_input")
	throttleout_ndx  = returnPltPos(name_,"_parsed_tx_accel_rpt_msg.output")
	throttlerptcom_ndx = returnPltPos(name_,"_parsed_tx_accel_rpt_msg.command")
	brakemanual_ndx = returnPltPos(name_,"_parsed_tx_brake_rpt_msg.manual_input")
	brakeout_ndx = returnPltPos(name_,"_parsed_tx_brake_rpt_msg.output")
	steermanual_ndx = returnPltPos(name_,"_parsed_tx_steer_rpt_msg.manual_input")
	steerout_ndx = returnPltPos(name_,"_parsed_tx_steer_rpt_msg.output")

	linear_acc = np.gradient(data_[vecvelocity_ndx][:,1],0.02)
	linear_acc_filter  = np.array(scipy.signal.savgol_filter(linear_acc, 51,3))

	linear_acc_time = np.array(data_[vecvelocity_ndx][:,0])
	linear_acc_ndx = np.column_stack((linear_acc_time, linear_acc))
	linear_acc_filter_ndx = np.column_stack((linear_acc_time, linear_acc_filter))

	lateral_acc_filter  = np.array(scipy.signal.savgol_filter(data_[acc_y_ndx][:,1], 301,3))
	lateral_acc_time = np.array(data_[acc_y_ndx][:,0])
	lateral_acc_filter_ndx = np.column_stack((lateral_acc_time, lateral_acc_filter))	

	path_driven = np.column_stack((data_[long_ndx][:,1],data_[lat_ndx][:,1]))

	lateral_err = distance.cdist(path_driven, waypoints_data).min(axis=1)

	# print(lateral_err)

	try:	
		output_file(listdir_[i][2:-1]+".html")

		p1 = figure(title=listdir_[i], x_axis_label='longitude (m)', y_axis_label='latitude (m)')
		p1.line(waypoints_data[:,0] - waypoints_data[0,0], waypoints_data[:,1] - waypoints_data[0,1] ,legend="Waypoints",line_width=2, line_color="blue")
		p1.line(data_[long_ndx][:,1] - data_[long_ndx][0,1], data_[lat_ndx][:,1] - data_[lat_ndx][0,1],  legend="Path Driven",line_width=2, line_color="red")
		# p1.line(data_[long_ndx][:,1], data_[lat_ndx][:,1],  legend="Path Driven",line_width=2, line_color="red")

		p2 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='acceleration (m/s^2)')
		p2.line(data_[acc_x_ndx][:,0], data_[acc_x_ndx][:,1], legend="Acceleration X",line_width=2, line_color="red")
		p2.line(data_[acc_y_ndx][:,0], data_[acc_y_ndx][:,1], legend="Acceleration Y",line_width=2, line_color="blue")
		p2.line(data_[acc_z_ndx][:,0], data_[acc_z_ndx][:,1], legend="Acceleration Z",line_width=2, line_color="green")

		p3 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='Velocity (m/s), acceleration (m/s^2), or brake input')
		p3.line(data_[vecvelocity_ndx][:,0], data_[vecvelocity_ndx][:,1], legend="Velocity",line_width=2, line_color="blue")
		# p3.line(linear_acc_ndx[:,0], linear_acc_ndx[:,1], legend="Linear Acceleration",line_width=2, line_color="green")
		p3.line(linear_acc_filter_ndx[:,0], linear_acc_filter_ndx[:,1], legend="Filtered Linear Acceleration",line_width=2, line_color="black")
		p3.line(data_[throttleout_ndx][:,0], data_[throttlemanual_ndx][:,1], legend="Throttle Output",line_width=2, line_color="red")
		# p3.line(data_[brakeout_ndx][:,0], data_[brakeout_ndx][:,1], legend="Brake Output",line_width=2, line_color="green")

		p4 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='angular velocity (rad/s), lateral acceleration (m/s^2), or steering command (rad)')
		p4.line(data_[ang_vel_z_ndx][:,0], -data_[ang_vel_z_ndx][:,1], legend="Yaw Rate",line_width=2, line_color="red")
		# p4.line(data_[ang_vel_y_ndx][:,0], data_[ang_vel_x_ndx][:,1], legend="Roll Rate",line_width=2, line_color="black")
		# p4.line(data_[acc_y_ndx][:,0], data_[acc_y_ndx][:,1], legend="Lateral Acceleration",line_width=2, line_color="green")
		p4.line(lateral_acc_filter_ndx[:,0], -lateral_acc_filter_ndx[:,1], legend="Lateral Acceleration",line_width=2, line_color="green")
		# p4.line(data_[yawrate_cmd_ndx][:,0], data_[yawrate_cmd_ndx][:,1], legend="Desired Yaw Rate",line_width=2, line_color="black")
		p4.line(data_[steermanual_ndx][:,0], data_[steermanual_ndx][:,1], legend="Steering",line_width=2, line_color="blue")

		# p4 = figure(title=listdir_[i], x_axis_label='time', y_axis_label='throttle')
		# p4.line(data_[throttle_ndx][:,0], data_[throttle_ndx][:,1]*100, legend="Throttle % Command",line_width=2, line_color="red")
		# p4.line(data_[throttleout_ndx][:,0], data_[throttleout_ndx][:,1]*100, legend="Throttle % Output",line_width=2, line_color="blue")
		# p4.line(data_[throttlerptcom_ndx][:,0], data_[throttlerptcom_ndx][:,1]*100, legend="Throttle % Report Command",line_width=2, line_color="green")

		p5 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='lateral error (m)')
		p5.line(data_[long_ndx][:,0], lateral_err, legend="Lateral Error",line_width=2, line_color="purple")

		curr = gridplot([[ p1, p3, p4, p5]])
		show(curr)

	except Exception:
		print i, listdir_[i], traceback.format_exc()		
		pass

	
