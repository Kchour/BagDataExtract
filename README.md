# BagDataExtract
This script is used to extract data from bag files. See other repo to extract video data

## Instructions
1. Download / clone this repository branch (plotting)
1. Place all bag files in a separate folder which has the same name (minus the extension i.e "bag123.bag" should be in folder "bag123")
1. Modify bagReadsimple script to include your desired topics, field variables, and bagfile name
1. Run the script by issuing "python bagReadSimple.py"
1. Resulting results will be generated in the folders
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
