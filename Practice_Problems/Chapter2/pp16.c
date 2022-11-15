#include "stdio.h"

void show_bits(int x){
    int i;
    for(i=31;i>=0;i--){
        printf("%d", (x>>i) & 1);
        if(i % 8 == 0){
            printf(" ");
        }
    }
}



int main(){
    int listOfAs[4] = {0xD4, 0x64, 0x72, -0x44};
    int a;

    for (int i=0; i < 4; i++){
        a = listOfAs[i];
        printf("a = %x : ", a);
        show_bits(a);

        int shiftLeft = a << 2;
        printf("%x : ", shiftLeft);
        show_bits(shiftLeft);

        int shiftRight = a >> 2;
        printf("%x : ", shiftRight);
        show_bits(shiftRight);
        printf("\n");

        unsigned int ua = a;
        int arithmeticShiftRight = ua >> 2;
        printf("%x : ", arithmeticShiftRight);
        show_bits(arithmeticShiftRight);
        printf("\n");


    };
    return 0;
};