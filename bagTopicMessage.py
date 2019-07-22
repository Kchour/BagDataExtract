import rosbag
import pdb
bag = rosbag.Bag('brake_0_5mph.bag')
types = []
topics_ = bag.get_type_and_topic_info()[1].keys()
#pdb.set_trace()
#### GET A LIST OF TOPICS AND TYPES
for i in range(0,len(bag.get_type_and_topic_info()[1].values())):
    types.append(bag.get_type_and_topic_info()[1].values()[i][0])

msg_fields = []
cnt = 1
for i in range(len(types)):
	for topic, msg, t in bag.read_messages(topics=topics_):
		if topic == topics_[i]:
			msg_fields.append(msg)	
			print cnt, topic
			cnt += 1		
			break	
	
def is_number(s):
	try:
		int(s)
		return True
	except:
		return False
		
while True:
	ndx = raw_input("PICK A TOPIC NUMBER: ")
	if ndx == 'L' or ndx == "LIST":
		for i in range(len(topics_)):
			print i+1, topics_[i]
	elif is_number(ndx):	
		ndx = int(ndx)
		print "TOPIC: ",topics_[ndx-1],"\n","TYPE: ",types[ndx-1],"\n","MSG: ","\n\n", msg_fields[ndx-1]
		print "\n"	
	