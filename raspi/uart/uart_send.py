# https://mlab.vn/index.php?_route_=bai-viet-ki-thuat/15129-bai-4-lap-trinh-raspberry-pi-su-dung-cong-truyen-thong-uart.html
#!/usr/bin/python3
 
import time
import serial
 
ser = serial.Serial(
	port = '/dev/ttyAMA0',
	baudrate = 9600,
	parity = serial.PARITY_NONE,
	stopbits = serial.STOPBITS_ONE,
	bytesize = serial.EIGHTBITS,
	timeout = 1
)
 
print("Raspberry's sending : ")
 
try:
    while True:
    	ser.write(b'hehe')
    	ser.flush()
    	print("hehe")
    	time.sleep(1)
except KeyboardInterrupt:
	ser.close()