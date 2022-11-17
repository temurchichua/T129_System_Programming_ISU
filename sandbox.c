#include "stdio.h"

void printIntAsBinary(int x){
    int i;
    for(i = 31; i >= 0; i--){
        printf("%d", (x >> i) & 1);
    }
    printf("\n");
}

int main(void){

    return 0;
}