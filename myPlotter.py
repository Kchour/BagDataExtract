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
# from scipy import spatial

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

waypoints_data = np.loadtxt("rainy_track3.dat",delimiter=',')
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

	linear_acc_cmd_ndx  = returnPltPos(name_,"_desired_acceleration_msg.data")
	linear_vel_cmd_ndx = returnPltPos(name_,"_desired_velocity_msg.data")
	yawrate_cmd_ndx = returnPltPos(name_,"_desired_yaw_rate_msg.data")


	linear_acc = np.gradient(data_[vecvelocity_ndx][:,1],0.02)
	linear_acc_filter  = np.array(scipy.signal.savgol_filter(linear_acc, 51,3))

	linear_acc_time = np.array(data_[vecvelocity_ndx][:,0])
	linear_acc_ndx = np.column_stack((linear_acc_time, linear_acc))
	linear_acc_filter_ndx = np.column_stack((linear_acc_time, linear_acc_filter))

	lateral_acc_filter  = np.array(scipy.signal.savgol_filter(data_[acc_y_ndx][:,1], 51,3))
	lateral_acc_time = np.array(data_[acc_y_ndx][:,0])
	lateral_acc_filter_ndx = np.column_stack((lateral_acc_time, lateral_acc_filter))	

	lateral_acc_ndx = returnPltPos(name_,"_lateral_acceleration_msg.data")

	path_driven = np.column_stack((data_[long_ndx][:,1],data_[lat_ndx][:,1]))

	mytree = scipy.spatial.cKDTree(waypoints_data)
	dist, indexes = mytree.query(path_driven)

	# dist, indexes = scipy.spatial.KDTree(waypoints_data).query(path_driven)

	# print(np.shape(indexes))

	numrows, numcols = np.shape(waypoints_data)
	numrows2, numcols2 = np.shape(path_driven)

	# print(np.shape(waypoints_data))

	# print(waypoints_data[indexes])
	point1 = waypoints_data[indexes]

	lateral_err1 = np.zeros(numrows2,)

	# for j in indexes:
	# 	point1 = waypoints_data[indexes[j]]

	# 	if (indexes[j] == numrows):
	# 		point2 = waypoints_data[indexes[j]-1]
	# 	else:
	# 		point2 = waypoints_data[indexes[j]+1]

	# 	slope = (point2[1] - point1[1]) / (point2[0] - point1[0]+0.00000000005)
	# 	constant = point1[1] - slope*point1[0]

	# 	lateral_err1[j] = np.abs(path_driven[j,1] - slope*path_driven[j,0] - constant) / ((1+slope**2)**0.5) 
	# 	#print(lateral_err1[j])
	
	lateral_err1 = distance.cdist(path_driven, waypoints_data).min(axis=1)
	#lateral_err1 = dist
	ave_err = np.mean(lateral_err1)
	max_err = max(lateral_err1)
	print(ave_err)
	print(np.size(lateral_err1))

	#lateral_err1 = np.array(scipy.signal.savgol_filter(lateral_err1, 51,3))
	# lateral_err = np.column_stack((np.array(data_[long_ndx][:,0]), lateral_err2))

	try:	
		output_file(listdir_[i][2:-1]+".html")

		p1 = figure(title=listdir_[i], x_axis_label='utm Easting (m)', y_axis_label='utm Northing (m)')
		p1.line(data_[long_ndx][:,1]- waypoints_data[0,0], data_[lat_ndx][:,1] - waypoints_data[0,1],legend="Path Driven",line_width=2, line_color="red")
		p1.line(waypoints_data[:,0] - waypoints_data[0,0], waypoints_data[:,1] - waypoints_data[0,1] ,legend="Waypoints",line_width=2, line_color="blue")
		p1.xaxis.axis_label_text_font_size = "18pt"
		p1.yaxis.axis_label_text_font_size = "18pt"
		p1.legend.label_text_font_size = '16pt'

		p2 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='acceleration (m/s^2)')
		p2.line(data_[acc_x_ndx][:,0], data_[acc_x_ndx][:,1], legend="Acceleration X",line_width=2, line_color="red")
		p2.line(data_[acc_y_ndx][:,0], data_[acc_y_ndx][:,1], legend="Acceleration Y",line_width=2, line_color="blue")
		p2.line(data_[acc_z_ndx][:,0], data_[acc_z_ndx][:,1], legend="Acceleration Z",line_width=2, line_color="green")
		p2.xaxis.axis_label_text_font_size = "18pt"
		p2.yaxis.axis_label_text_font_size = "18pt"
		p2.legend.label_text_font_size = '16pt'

		p3 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='Velocity (m/s) or throttle input')
		p3.line(data_[vecvelocity_ndx][:,0], data_[vecvelocity_ndx][:,1], legend="Velocity",line_width=2, line_color="blue")
		p3.line(data_[linear_vel_cmd_ndx][:,0], data_[linear_vel_cmd_ndx][:,1], legend="Desired Velocity",line_width=2, line_color="black")

		# p3.line([2.7, 53],[5, 5], legend="Desired Velocity",line_width=2, line_color="black")
		# p3.line(linear_acc_ndx[:,0], linear_acc_ndx[:,1], legend="Linear Acceleration",line_width=2, line_color="green")
		# p3.line(linear_acc_filter_ndx[:,0], linear_acc_filter_ndx[:,1], legend="Filtered Linear Acceleration",line_width=2, line_color="black")
		p3.line(data_[throttle_ndx][:,0], data_[throttle_ndx][:,1], legend="Throttle Command",line_width=2, line_color="red")

		# p3.line(data_[linear_acc_cmd_ndx][:,0], data_[linear_acc_cmd_ndx][:,1], legend="Desired Acceleration",line_width=2, line_color="green")
		# p3.line(data_[linear_vel_cmd_ndx][:,0], data_[linear_vel_cmd_ndx][:,1], legend="Desired Velocity",line_width=2, line_color="purple")		

		# p3.line(data_[throttleout_ndx][:,0], data_[throttleout_ndx][:,1], legend="Throttle Output",line_width=2, line_color="cyan")
		# p3.line(data_[pacvelocity_ndx][:,0], data_[pacvelocity_ndx][:,1], legend="PACMod Velocity",line_width=2, line_color="green")
		# p3.line(data_[brake_ndx][:,0], data_[brake_ndx][:,1], legend="Brake Command",line_width=2, line_color="red")
		# p3.line(data_[brakeout_ndx][:,0], data_[brakeout_ndx][:,1], legend="Brake Output",line_width=2, line_color="black")

		p3.xaxis.axis_label_text_font_size = "18pt"
		p3.yaxis.axis_label_text_font_size = "18pt"
		p3.legend.label_text_font_size = '16pt'

		p4 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='angular velocity (rad/s) or steering input (rad)')
		p4.line(data_[ang_vel_z_ndx][:,0], -data_[ang_vel_z_ndx][:,1], legend="Yaw Rate",line_width=2, line_color="red")
		p4.line(data_[yawrate_cmd_ndx][:,0], data_[yawrate_cmd_ndx][:,1], legend="Desired Yaw Rate",line_width=2, line_color="black")
		# p4.line(data_[lateral_acc_ndx][:,0], data_[lateral_acc_ndx][:,1], legend="Lateral Acceleration calculated",line_width=2, line_color="green")
		# p4.line(lateral_acc_filter_ndx[:,0], -lateral_acc_filter_ndx[:,1], legend="Lateral Acceleration imu",line_width=2, line_color="purple")
		p4.line(data_[steer_ndx][:,0], data_[steer_ndx][:,1], legend="Steering Command",line_width=2, line_color="blue")

		p4.xaxis.axis_label_text_font_size = "18pt"
		p4.yaxis.axis_label_text_font_size = "18pt"
		p4.legend.label_text_font_size = '16pt'

		# p4 = figure(title=listdir_[i], x_axis_label='time', y_axis_label='throttle')
		# p4.line(data_[throttle_ndx][:,0], data_[throttle_ndx][:,1]*100, legend="Throttle % Command",line_width=2, line_color="red")
		# p4.line(data_[throttleout_ndx][:,0], data_[throttleout_ndx][:,1]*100, legend="Throttle % Output",line_width=2, line_color="blue")
		# p4.line(data_[throttlerptcom_ndx][:,0], data_[throttlerptcom_ndx][:,1]*100, legend="Throttle % Report Command",line_width=2, line_color="green")

		p5 = figure(title=listdir_[i], x_axis_label='time (sec)', y_axis_label='Distance (m)')
		p5.line(data_[long_ndx][:,0], lateral_err1[:], legend="Lateral Error",line_width=2, line_color="purple")
		p5.line(data_[long_ndx][:,0], ave_err, legend="Mean Error",line_width=2, line_color="green")
		p5.line(data_[long_ndx][:,0], max_err, legend="Max Error",line_width=2, line_color="red")


		p5.xaxis.axis_label_text_font_size = "18pt"
		p5.yaxis.axis_label_text_font_size = "18pt"
		p5.legend.label_text_font_size = '16pt'

		curr = gridplot([[p1, p3, p4, p5]])
		show(curr)

	except Exception:
		print i, listdir_[i], traceback.format_exc()		
		pass

	
