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
from scipy.signal import savgol_filter
from bokeh.layouts import gridplot

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

def storeProcessed(listdir_,ndx):
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




#### Plot everything separately ####################################
#### FOR loop to look through each folder on the list ##############
#for i in range(len(listdir_)):
#	name_,data_ = storeProcessed(listdir_,i)
#	vehicle_speed_ndx = returnPltPos(name_,"_pacmod_as_tx_vehicle_speed_msg.data")
#	throttle_ndx = returnPltPos(name_,"_pacmod_as_rx_accel_cmd_msg.command")
#	pdb.set_trace()
#
#	try:	
#		output_file(listdir_[i][2:-1]+".html")
#
#		p1 = figure(title=listdir_[i], x_axis_label='time')
#		p1.line(data_[vehicle_speed_ndx][:,0], data_[vehicle_speed_ndx][:,1], legend="PACMod Speed",line_width=2, line_color="red")
#		p1.line(data_[throttle_ndx][:,0], data_[throttle_ndx][:,1], legend="throttle input",line_width=2, line_color="blue")
#		# p2.line(data_[fakeyaw_ndx][:,0], data_[fakeyaw_ndx][:,1], legend="fakeyaw",line_width=2, line_color="green")
#		curr = gridplot([[p1]])
#		show(curr)
#	except Exception:
#		print i, listdir_[i], traceback.format_exc()		
#		pass
#

######## PLOT ON TOP OF EACH OTHER ##################
ndx35 = returnPltPos(listdir_,"./throttle_035_2019_04_17_11_14_54/")
ndx45 = returnPltPos(listdir_,"./throttle_045_2019_04_17_11_16_46/")
ndx50 = returnPltPos(listdir_,"./throttle_050_2019_04_17_11_18_33/")
ndx55 = returnPltPos(listdir_,"./throttle_055_2019_04_17_11_20_22/")
ndx60 = returnPltPos(listdir_,"./throttle_060_2019_04_17_11_27_48/")
ndx65 = returnPltPos(listdir_,"./throttle_065_2019_04_17_11_29_22/")
ndx70 = returnPltPos(listdir_,"./throttle_070_2019_04_17_11_31_44/")
ndx100 =returnPltPos(listdir_,"./coasting2_2019_04_17_11_43_38/")	

desired_ndx = [ndx35, ndx45, ndx50, ndx55, ndx60, ndx65, ndx70,ndx100]
values = ['35','45','50','55','60','65','70','100']

#### Import some tools to use colors
#### colors has a list of colors which can be used in plots
#from bokeh.palettes import Dark2_5 as palette
from bokeh.palettes import Set1_8 as palette
import itertools
colors = itertools.cycle(palette)
output_file("speedvsthrottle.html")
legend_title = "Throttle %"
p1 = figure(title="Speed vs. Throttle Step Inputs", x_axis_label="time [s]",y_axis_label="speed [m/s]")
p = p1.circle(0, 0, size=0.00000001, color= "#ffffff")	#USED TO CREATE A LEGEND TITLE
legend_it = []
legend_it.append(("Throttle Level",[p]))



p2 = figure(title="Map",x_axis_label="Velocity [m/s]", y_axis_label="Accel [m^2/s]")
p = p2.circle(0, 0, size=0.00000001, color= "#ffffff")	#USED TO CREATE A LEGEND TITLE
legend_it2 = []
legend_it2.append(("Throttle Level",[p]))
for i in range(len(desired_ndx)-1,-1,-1):
	name_,data_  = storeProcessed(listdir_,desired_ndx[i]) 
	vehicle_speed_ndx = returnPltPos(name_,"_pacmod_as_tx_vehicle_speed_msg.data")
	#filt_speed = savgol_filter(data_[vehicle_speed_ndx][:,1],21, 3)
	filt_speed_poly = np.polyfit(data_[vehicle_speed_ndx][:,0]-data_[vehicle_speed_ndx][0,0],data_[vehicle_speed_ndx][:,1],15)
	t = np.linspace(0,data_[vehicle_speed_ndx][-1,0]-data_[vehicle_speed_ndx][0,0],2500)
	filt_speed = np.polyval(filt_speed_poly,t)
	#accel = np.gradient(filt_speed,t)
	#filt_accel = savgol_filter(accel, 11, 3)
	accel_poly = np.polyder(filt_speed_poly)
	filt_accel = np.polyval(accel_poly,t)
	plot1 = p1.line(t, filt_speed, color=next(colors), line_width=2)
	plot2 = p2.line(filt_speed, filt_accel, color=next(colors), line_width=2)
	legend_it.append((str(values[i])+'%',[plot1]))
	legend_it2.append((str(values[i])+'%',[plot2]))

from bokeh.models import Legend
legend = Legend(items=legend_it)
#p1.legend.location = "top_right"
legend.click_policy="hide"
p1.add_layout(legend,'right')

legend2 = Legend(items=legend_it2)
legend2.click_policy="hide"
p2.add_layout(legend2,'right')
grid = gridplot([[p1],[p2]])
show(grid)




	
