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

void represent_int_number(int number){
    show_bits(number);
    printf("hex: 0x%x | int: %d", number, number);
    printf("\n");

}

int main(){
    int mask = 0xFF;
    represent_int_number(mask);

    int x = 0x87654321;
    represent_int_number(x);
//    problem A
    int mask_a = x & mask;
    represent_int_number(mask_a);
//    Problem B
    int mask_b = x ^ ~mask;

    represent_int_number(mask_b);
//    Problem C
    int mask_c = x | mask;
    represent_int_number(mask_c);
};