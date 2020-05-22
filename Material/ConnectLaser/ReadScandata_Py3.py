#!/usr/bin/python

import sys
import socket

# some constants
TCP_PORT=2112
REQUEST_TRANSMISSION_ON='\x02sEN LMDscandata 1\x03'
REQUEST_TRANSMISSION_OFF='\x02sEN LMDscandata 0\x03'
OUTBUF_SIZE = 4096

# read arguments from command line
ipAddressOfTimmy = sys.argv[1]
outputFileName = sys.argv[2]
numberOfScans = int(sys.argv[3])

# print arguments to console
print("IP Address of TiM scanner = "+ipAddressOfTimmy)
print("Output file = "+outputFileName)
print("Number of scans to be read = "+str(numberOfScans))

insideTelegram = False;
telegramCount = 0;

socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket.connect((ipAddressOfTimmy, TCP_PORT))
outputFileHandle = open(outputFileName, "w", OUTBUF_SIZE)
socket.send(REQUEST_TRANSMISSION_ON.encode('utf-8'))

while 1:
	for c in socket.recv(1):
		if 2 == c: #"\x02"
			insideTelegram = True
            
		elif 3 == c: #"\x03"
			outputFileHandle.write ("\n\n")
			insideTelegram = False
			telegramCount+=1
            
			if (telegramCount > numberOfScans+2):
				outputFileHandle.close()
				socket.send(REQUEST_TRANSMISSION_OFF.encode('utf-8'))
				socket.close()
				sys.exit("data received")
                
		elif insideTelegram:
			outputFileHandle.write (str(c))
            
		else:
			# ignore anything outside an STX/ETX frame
			print("Unexpected input: "+str(c))
			

