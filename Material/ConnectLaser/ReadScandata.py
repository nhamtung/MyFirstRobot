#!/usr/bin/python

import sys
import socket
import time

# some constants
TCP_PORT=2112
REQUEST_TRANSMISSION_ON="\x02sEN LMDscandata 1\x03"
REQUEST_TRANSMISSION_OFF="\x02sEN LMDscandata 0\x03"
OUTBUF_SIZE = 4096

# read arguments from command line
l_ipAddressOfTimmy = sys.argv[1]
l_outputFileName = sys.argv[2]
l_numberOfScans = int(sys.argv[3])

# print arguments to console
print "IP Address of TiM scanner = "+l_ipAddressOfTimmy;
print "Output file = "+l_outputFileName;
print "Number of scans to be read = "+str(l_numberOfScans);

l_insideTelegram = False;
l_telegramCount = 0;

l_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
l_socket.connect((l_ipAddressOfTimmy, TCP_PORT))

l_outputFileHandle = open(l_outputFileName, "w", OUTBUF_SIZE)

l_socket.send(REQUEST_TRANSMISSION_ON)

while 1:
	for c in l_socket.recv(1):
		if "\x02" == c:
			l_insideTelegram = True
		elif "\x03" == c:
			l_outputFileHandle.write ("\n")
			l_insideTelegram = False

			l_telegramCount+=1
			if (l_telegramCount > l_numberOfScans+2):
				l_outputFileHandle.close()

				l_socket.send(REQUEST_TRANSMISSION_OFF)
				l_socket.close();
				
				exit(0)
		elif l_insideTelegram:
			l_outputFileHandle.write (c)
		else:
			# ignore anything outside an STX/ETX frame
			print "Unexpected input: "+c
			

