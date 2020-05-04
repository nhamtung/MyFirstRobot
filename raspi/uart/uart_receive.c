// https://mlab.vn/index.php?_route_=bai-viet-ki-thuat/15129-bai-4-lap-trinh-raspberry-pi-su-dung-cong-truyen-thong-uart.html

// install wiringPi:
// $cd /tmp
// $sudo wget https://unicorn.drogon.net/wiringpi-2.46-1.deb
// $sudo dpkg -i wiringpi-2.46-1.deb 

// Compile : $gcc -Wall uart_receive.c -o uart_receive -lwiringPi
// Run: $./uart_receive
 
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <wiringPi.h>
#include <wiringSerial.h>
 
int main() {
 
	int fd;
	char c;
	printf("Raspberry's receiving : \n");
 
	while(1) {
		if((fd = serialOpen ("/dev/ttyAMA0", 115200)) < 0 ){
			fprintf (stderr, "Unable to open serial device: %s\n", strerror (errno)) ;
		}else{
			do{
				c = serialGetchar(fd);
				printf("%c",c);
				fflush (stdout);
			}while(serialDataAvail(fd));
		}
	}
	return 0;
}
