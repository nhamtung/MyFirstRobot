# https://mlab.vn/index.php?_route_=bai-viet-ki-thuat/15129-bai-4-lap-trinh-raspberry-pi-su-dung-cong-truyen-thong-uart.html
#!/usr/bin/python3
 
import time
import serial
 
ser = serial.Serial(
	port = '/dev/ttyAMA0',
	baudrate = 115200,
	parity = serial.PARITY_NONE,
	stopbits = serial.STOPBITS_ONE,
	bytesize = serial.EIGHTBITS,
	timeout = 1
)
 
print("Raspberry's receiving : ")
 
try:
    while True:
        s = ser.readline()
        # print("TungNV_s = ", s)				# print string
        data = s.decode()			# decode s
        data = data.rstrip()			# cut "\r\n" at last of string
        print("TungNV_data = ", data)				# print string
 
except KeyboardInterrupt:
	ser.close()
