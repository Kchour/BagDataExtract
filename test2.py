import rosbag
import pdb
bag = rosbag.Bag('throttle_050_2019-04-17-11-18-33.bag')
types = []

#pdb.set_trace()
#### GET A LIST OF TOPICS AND TYPES
for i in range(0,len(bag.get_type_and_topic_info()[1].values())):
    types.append(bag.get_type_and_topic_info()[1].values()[i][0])

msg_fields = []
cnt = 1
for i in range(len(types)):
	for topic, msg, t in bag.read_messages(topics=types[i]):
		if topic == types[i]:
			msg_fields.append(msg)	
			print cnt
			cnt += 1		
			break	
			

while True:
	ndx = int(raw_input("PICK A TOPIC NUMBER: "))
	print types[ndx-1], msg_fields[ndx-1]
	print "\n"	
