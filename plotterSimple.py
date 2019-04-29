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
			txtread = np.genfromtxt(listdir_[ndx]+f,delimiter=',',dtype='float')
			name_.append(f[0:-4])
			data_.append(txtread)
			cnt+=1
	return name_,data_


def plotProccessed(name_,data_,listdir_title,ndx,xlabel = "default",ylabel="default"):
	#### PLOT PROCESSED DATA
	# "* is the clipboard register
	if ylabel == "default":
		ylabel = name_[ndx]
	if xlabel == "default":
		xlabel = "time"
	p = figure(title=listdir_title, x_axis_label=xlabel, y_axis_label=ylabel)
	p.line(data_[ndx][:,0], data_[ndx][:,1],legend="temp",line_width=2)
	show(p)
	#test = np.genfromtxt(listdir_[1]+"complete.txt",dtype="object")

def is_number(s):
	try:
		int(s)
		return True
	except:
		return False

while True:
	ndx1 = raw_input("ENTER DIRECTORY NUMBER TO PROCESS: ")
	if is_number(ndx1):
		print '\n'
		while True:
			name_,data_ = storeProccessed(listdir_,int(ndx1)-1)
			ndx2 = raw_input("ENTER INSTANCE TO PLOT, a=ALL, or b=BACK: ")
			print '\n'
			if ndx2 == 'a' or ndx2 == "ALL":
				print "WIP"
			elif ndx2 =='b' or ndx2 == "BACK":
				print "BACK"
				break
			elif is_number(ndx2):
				plotProccessed(name_,data_,listdir_[int(ndx1)-1],int(ndx2)-1)
			elif not is_number(ndx2):
				print "ENTER A NUMBER FROM ABOVE PLEASE"
	else:	
		print "GIVE A INTEGER NUMBER ABOVE PLEASE"
