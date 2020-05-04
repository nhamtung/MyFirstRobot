# https://mlab.vn/index.php?_route_=bai-viet-ki-thuat/15129-bai-4-lap-trinh-raspberry-pi-su-dung-cong-truyen-thong-uart.html
#!/usr/bin/python3
# run $python3 uart_send.py
 
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
 
print("Raspberry's sending : ")
 
try:
    while True:
    	ser.write(b'TungNV Hello')
    	ser.flush()
    	print("TungNV Hello")
    	time.sleep(1)
except KeyboardInterrupt:
	ser.close()
