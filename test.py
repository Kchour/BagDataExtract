from os import listdir
from os.path import isfile
import os
import pdb
import numpy as np
from bokeh.io import show
from bokeh.layouts import column
from bokeh.models import ColumnDataSource, RangeTool
from bokeh.plotting import figure


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
#### STORE PROCESSED DATA
	data_ = []
	name_ = []
	cnt = 1
	for f in listdir(listdir_[ndx]):
		if f.endswith('.txt'):
			print cnt, f
			txtread = np.genfromtxt(listdir_[0]+f,delimiter=',',dtype='float')
			name_.append(f[0:-4])
			data_.append(txtread)
			cnt+=1
	return name_,data_


def plotProccessed(name_,data_,ndx):
	#### PLOT PROCESSED DATA
	# "* is the clipboard register
	p = figure(title=name_[ndx], x_axis_label="time", y_axis_label=name_[ndx])
	p.line(data_[ndx][:,0], data_[ndx][:,1],legend="temp",line_width=2)
	show(p)
	#test = np.genfromtxt(listdir_[1]+"complete.txt",dtype="object")

while True:
	ndx = int(raw_input("ENTER DIRECTORY NUMBER TO PROCESS: "))
	print '\n'
	name_,data_ = storeProccessed(listdir_,ndx-1)
	ndx = raw_input("ENTER INSTANCE TO PLOT, a=ALL, or b=BACK: ")
	if ndx == 'a' or ndx == "ALL":
		print "WIP"
	elif ndx ==' b' or ndx == "BACK":
		print "BACK"
	elif isinstance(int(ndx), int):
		plotProccessed(name_,data_,int(ndx)-1)

