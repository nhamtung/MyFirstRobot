// https://solarianprogrammer.com/2019/07/18/python-using-c-cpp-libraries-ctypes/

#include <stdio.h>
#include "mylib.h"

void test_empty(void) {
    puts("Hello from C");
}

float test_add(float x, float y) {
    return x + y;
}

void test_passing_array(int *data, int len) {
    printf("Data as received from Python\n");
    for(int i = 0; i < len; ++i) {
        printf("%d ", data[i]);
    }
    puts("");

    // Modifying the array
    for(int i = 0; i < len; ++i) {
        data[i] = -i;
    }
}
