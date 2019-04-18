import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
import utm
import os
import pdb

for root, directories, filenames in os.walk("./"):
	for directory in directories:
		

folder = '2019-03-30-16-47-29'
lat_file = '_mti_filter_position_msg.latitude.txt'
long_file = '_mti_filter_position_msg.longitude.txt'
velx_file = '_vehicle_twist_msg.twist.linear.x.txt'
yawd_file = '_vehicle_twist_msg.twist.angular.z.txt'


lat_data = np.loadtxt('./'+folder+'/'+lat_file,delimiter=',')
long_data = np.loadtxt('./'+folder+'/'+long_file,delimiter=',')
velx_data = np.loadtxt('./'+folder+'/'+velx_file,delimiter=',')
yawd_data = np.loadtxt('./'+folder+'/'+yawd_file,delimiter=',')

utmx = []
utmy = []
for i in range(len(lat_data)):
	temp=utm.from_latlon(lat_data[i][1],long_data[i][1])
	utmx.append(temp[0])
	utmy.append(temp[1])


#plt.figure()
#plt.plot(utmx-utmx[0],utmy-utmy[0])
#plt.title('UTM Location')
#plt.figure()
#plt.plot(long_data[:,1],lat_data[:,1])
#plt.title('GPS Location')
#plt.show()


fig, ax = plt.subplots()
xdata, ydata = [], []
#ln, = plt.plot([], [], 'ro')
ln, = plt.plot([], [])

def init():
    plt.scatter(0,0)
    ax.set_xlim(1.12*(min(utmx)-utmx[0]),1.12*(max(utmx)-utmx[0]))
    ax.set_ylim(1.12*(min(utmy)-utmy[0]),1.12*(max(utmy)-utmy[0]))
    plt.xlabel('EASTING [m]')
    plt.ylabel('NORTHING [m]')
    plt.title('POSITION: Trial 2')
    return ln,

def update(frame):
    xdata.append(utmx[int(frame)]-utmx[0])
    ydata.append(utmy[int(frame)]-utmy[0])
    ln.set_data(xdata, ydata)
    return ln,

ani = FuncAnimation(fig, update, frames=np.linspace(0, len(utmx)-1, 200),
                    init_func=init, blit=True, interval=1,repeat=False)
#ani.save('MovWave.avi', writer="ffmpeg")

plt.show()


