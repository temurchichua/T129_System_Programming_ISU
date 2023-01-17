#include <stdint.h>
#include "stdio.h"

void printIntAsBinary(unsigned int x){
    unsigned long test_value = (unsigned long) x;
    int i;
    unsigned long mask = 1;
    for(i = 63; i >= 0; i--){
        printf("%d", (mask << i) & test_value ? 1 : 0);
    }
    printf(" : %lx : %ld\n", test_value, test_value);
}

int main(void){
    int asize;
    int bsize;
    int DSIZE = 8;
    int size = 16;
    asize = DSIZE * ((size + DSIZE + DSIZE - 1)/ DSIZE);
    bsize = size + 2 * DSIZE - 1;
    printf("asize: %d, bsize: %d\n", asize, bsize);
    return 0;

}