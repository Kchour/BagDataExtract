# BagDataExtract
This script is used to extract data from bag files. It will automatically look for bag files in the directory as the bagReadSimple.py and turn data into text files. You can specify the topics, field variables to filter through in the script

## Instructions
1. Download / clone this repository branch (plotting)
1. Place all bag files in the same directory as scripts
1. Modify bagReadsimple script to include your desired topics, field variables
1. Run the script by issuing "python bagReadSimple.py"
1. Results will be generated in the folders


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

