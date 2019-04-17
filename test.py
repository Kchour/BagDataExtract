from os import listdir
from os.path import isfile

for f in listdir("./"):
	if f.endswith('.bag'):
		print f


