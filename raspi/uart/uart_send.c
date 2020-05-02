// https://mlab.vn/index.php?_route_=bai-viet-ki-thuat/15129-bai-4-lap-trinh-raspberry-pi-su-dung-cong-truyen-thong-uart.html
// Compile : gcc -Wall uart-receive.c -o uart-receive -lwiringPi
 
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
		if((fd = serialOpen ("/dev/ttyAMA0", 9600)) < 0 ){
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
