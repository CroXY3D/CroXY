import argparse
import sys
import os
import re
import numpy
from stl import mesh
import math

# rotstl:
#
# 	rotates one or more STL files based on a naming convention of the files
#	
#file names are of form name-?.stl
	
#	where ? is one of:
#		F : Front
#		T : Top
#		B : Back
#		L : Left
#		R : Right
#		X : Don't Rotate
#
#	if -? is missing from the filename then the file is ignorned.''')



def rotateSTLs(fileNamesYo, deleteFiles):
	for fileName in fileNamesYo:
		#print fileName + ":",

		try:
			rotGroup = re.search('-([FTBLRX])\.', fileName)

			rot = rotGroup.group(1)
			try:
				#try 
				#print "asd"
				stlMesh = mesh.Mesh.from_file(fileName)
				#print "asdasd"
				#except
					#stlMesh = mesh.Mesh.from_file(fileName,True, None,stl.Mode.ASCII)
				strOut = fileName+":"

				if (rot == 'F'):
					strOut += "Front Down"
					stlMesh.rotate([1, 0, 0.0], -math.radians(90))
				elif (rot == 'T'):
					strOut += "Top Down"
					stlMesh.rotate([1, 0, 0.0], math.radians(180))
				elif (rot == 'B'):
					strOut += "Back Down"
					stlMesh.rotate([1, 0, 0.0], math.radians(90))
				elif (rot == 'L'):
					strOut += "Left Down"
					stlMesh.rotate([0.0, 1, 0.0], math.radians(90))
				elif (rot == 'R'):
					strOut += "Right Down"
					stlMesh.rotate([0.0, 1, 0.0], -math.radians(90))
				elif (rot == 'X'):
					strOut += "No Rotation"
				else:
					print ("Invalid rotation")	# probably not ever reached.  re.search above will throw an exception
					raise ValueError("Invalid Rotation")

				fileNameOutGroup = re.search('(.+?)-[FTBLRX]\.', fileName) 
				fileNameOut = fileNameOutGroup.group(1) + ".stl"
				strOut += " -> " + fileNameOut
				stlMesh.save(fileNameOut)
				if deleteFiles:
					strOut += ", "+fileName + " deleted."
					#print( fileName + " deleted."),
					os.remove(fileName)
				print strOut
			except:
				print "Internal Error"
		except :
			# No Rotation specified
			#print fileName + ":(No Rotation)"
			continue


def main():
	parser = argparse.ArgumentParser(description = "Rotate STLs based on filename", formatter_class=argparse.RawTextHelpFormatter, epilog='''
file is of form name-?.stl
	
	where ? is one of:
		F : Front
		T : Top
		B : Back
		L : Left
		R : Right
		X : Don't Rotate

	if -? is missing from the filename then the file is ignorned.''')
	
	parser.add_argument("-d", dest="deleteFiles", action="store_true", help="Delete source files on successful rotation")
	parser.add_argument("file", nargs='*')
	#parser.print_help()

	args = parser.parse_args()
	#for f in args.files:
	#	print f

	rotateSTLs(args.file, args.deleteFiles)

if __name__=="__main__":
	main()	