# BagDataExtract
This script is used to extract data from bag files. It will automatically look for bag files in the directory as the bagReadSimple.py and turn the data into text files. You can specify the topics, field variables to filter through in the script

## Instructions
1. Download / clone this repository branch (plotting)
1. Delete all prior folders 
1. Place all bag files in the same directory as scripts
1. Modify "bagReadSimple.py" script to include your desired topics, field variables (see example below)
	1. To see topics and corresponding message structure, run "bagTopicMessage.py" 
1. Run the script by issuing "python bagReadSimple.py"
1. Results will be generated in the folders

## Plotting
1. Get Bokeh (sudo pip install bokeh)
1. Modify "myPlotter.py" as necessary to include the text_file to plot from. See the script for an example
1. Run by issuing pythong myPlotter.py
1. Results will be saved as html files (will auto open in the browser). Html files will be named according to the bag files


## Miscellaneous info
1. To get a list of topics for a rosbag
	1. rosbag info bagfilename.bag
1. To play rosbag paused
	1. rosbag play bagfilename.bag --pause
1. To get the detailed information about every topic, you could run:
	1. rostopic list |xargs -n 1 rostopic type >> info
1. Or you could combine with grep:
	1. rostopic list |grep robot |xargs -n 1 rostopic type
1. Get information regarding each message field variables
	1. rostopic list | xargs -n 1 rostopic type | xargs -n 1 rosmsg show >> msginfo.txt

## Some Examples
1. In bagReadSimple.py, modify the desiredTopics and desiredFields as needed, i.e.
'''
desiredTopics = ['/pacmod/as_rx/accel_cmd',
	         '/pacmod/as_rx/brake_cmd',
		 '/pacmod/as_rx/steer_cmd',
                 '/pacmod/as_rx/enable',
                 '/pacmod/as_tx/vehicle_speed',
		 '/game_control/joy']
desiredFields = [['msg.command','msg.enable'],
		 ['msg.command','msg.enable'],
		 ['msg.command','msg.enable'],
                 ['msg.data'],
                 ['msg.data'],
		 ['msg.buttons[0]']]	#### FOR ARRAYS YOU NEED TO SPECIFY EACH ELEMENT
'''


