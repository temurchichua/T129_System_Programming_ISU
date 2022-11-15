#include "stdio.h"


void print_xy(int *x, int *y){
    printf("x = %d (%x), y = %d (%x)\n", *x, x, *y, y);
}

void inplace_swap(int *x, int *y){
    if (x == y) return;

    *y = *x ^ *y;
    *x = *x ^ *y;
    *y = *x ^ *y;
};

void reverse_array(int * a, int cnt){
    int first, last;
    for (first = 0, last = cnt-1; first <= last; first++, last--){
        print_xy(&a[first], &a[last]);
        inplace_swap(&a[first], &a[last]);
    }
}
int main(){
    int SIZE = 5;
    int my_array[5] = {1,2,3,4, 5};
    reverse_array(my_array, SIZE);
    // print values of my_array
    printf("my_array = ");
    for (int i = 0; i < SIZE; i++){
        printf("%d ", my_array[i]);
    }
    return 0;
}