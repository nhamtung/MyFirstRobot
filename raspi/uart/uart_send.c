// https://mlab.vn/index.php?_route_=bai-viet-ki-thuat/15129-bai-4-lap-trinh-raspberry-pi-su-dung-cong-truyen-thong-uart.html

// install wiringPi:
// $cd /tmp
// $sudo wget https://unicorn.drogon.net/wiringpi-2.46-1.deb
// $sudo dpkg -i wiringpi-2.46-1.deb 

// Compile : $gcc -Wall uart_send.c -o uart_send -lwiringPi
// Run: $./uart_send
 
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <wiringPi.h>
#include <wiringSerial.h>
 
int main() {
 
	int fd;
 
	printf("Raspberry's sending : \n");
 
	while(1) {
		if((fd = serialOpen ("/dev/ttyAMA0", 115200)) < 0 ){
			fprintf (stderr, "Unable to open serial device: %s\n", strerror (errno));
		}
		serialPuts(fd, "hello");
		serialFlush(fd);
		printf("%s\n", "hello");
		fflush(stdout);
		delay(1000);
	}
	return 0;
}
