# https://solarianprogrammer.com/2019/07/18/python-using-c-cpp-libraries-ctypes/

""" Python wrapper for the C shared library mylib"""
import sys, platform
import ctypes, ctypes.util

# Find the library and load it
mylib_path = ctypes.util.find_library("./mylib")
print ("INFO - mylib_path: " + str(mylib_path))
if not mylib_path:
	print("Unable to find the specified library.")
	sys.exit()

try:
	mylib = ctypes.CDLL(mylib_path)
except OSError:
	print("Unable to load the system C library")
	sys.exit()
