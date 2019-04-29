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


#### FOR loop to look through each folder on the list
for i in range(len(listdir_)):
	
	name_,data_ = storeProccessed(listdir_,i)
	lat_ndx = returnPltPos(name_,"_mti_filter_position_msg.latitude")
	long_ndx = returnPltPos(name_,"_mti_filter_position_msg.longitude")
	fakeyaw_ndx = returnPltPos(name_,"_vehicle_twistfake_msg.twist.angular.z")
	result1_ndx = returnPltPos(name_,"_result_t1_msg.data")
	result2_ndx = returnPltPos(name_,"_result_t2_msg.data")

	try:	
		output_file(listdir_[i][2:-1]+".html")
		p1 = figure(title=listdir_[i], x_axis_label='longitude', y_axis_label='latitude')
		p1.line(data_[long_ndx][:,1], data_[lat_ndx][:,1],legend="Path",line_width=2)

		p2 = figure(title=listdir_[i], x_axis_label='time')
		p2.line(data_[result1_ndx][:,0], data_[result1_ndx][:,1], legend="Result1",line_width=2, line_color="red")
		p2.line(data_[result2_ndx][:,0], data_[result2_ndx][:,1], legend="Result2",line_width=2, line_color="blue")
		p2.line(data_[fakeyaw_ndx][:,0], data_[fakeyaw_ndx][:,1], legend="fakeyaw",line_width=2, line_color="green")
		curr = gridplot([[p1, p2]])
		show(curr)
	except Exception:
		print i, listdir_[i], traceback.format_exc()		
		pass

	
