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
    uint32_t a = 0xffffffff;
    uint32_t b = 1;
    uint32_t c = a + b;
    uint64_t d = a + b;
    uint64_t e = 4294967295 + 1;
    // print the decimal values of a, b, c, d, e
    printf("a = %d, b = %d, c = %d, d = %ld, e = %ld\n", a, b, c, d, e);

    // print binary values of a-e
    printf("a = ");
    printIntAsBinary(a);
    printf("b = ");
    printIntAsBinary(b);
    printf("c = ");
    printIntAsBinary(c);
    printf("d = ");
    printIntAsBinary(d);
    printf("e = ");
    printIntAsBinary(e);
    return 0;

}