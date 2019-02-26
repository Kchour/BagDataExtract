# BagDataExtract
This script is used to extract data from bag files. See other repo to extract video data

## Instructions
1. Run a bag file using rosbag play bagfilename.bag --pause
1. In a separate terminal, do ./sumgen.sh to generate 3 summary files
	1. listinfo.txt is a list a of topic names
	1. typeinfo.txt is a list of topic message types
	1. msginfo.txt is a list of message field names and variables
1. Run bagReadSimple using python bagReadSimply.py
	1. Edit script to reflect desired bag name
	1. Edit the desired topic names and field names/variables as desired
	1. output will be text files easily importable to octave/matlab
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
