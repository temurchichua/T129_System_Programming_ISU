#include <stdint.h>
#include "stdio.h"
#include "stdlib.h"


int tadd_ok(uint8_t x, uint8_t y){
    int sum = x + y;
    int neg_over = x < 0 && y < 0 && sum >= 0;
    int pos_over = x >= 0 && y >= 0 && sum < 0;
    printf("x = %d, y = %d, sum = %d, neg_over = %d, pos_over = %d\n", x, y, sum, neg_over, pos_over);
    return !neg_over && !pos_over;
}

int main(){
    int x = 200;
    int y = 100;
    int result = tadd_ok(x, y);
    printf("%d", result);
    return 1;
};