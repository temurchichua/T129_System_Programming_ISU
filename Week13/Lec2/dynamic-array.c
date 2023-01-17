#include "../../csapp-lib/csapp.h"

int main(void)
{
    puts("Enter the length of the array: ");
    int n;
    scanf("%d\n", &n);

    int *array = (int*) Malloc(n * sizeof(int));
    for (size_t i = 0; i < n; i++)
        scanf("%d", &array[i]);

    free(array);

    return 0;
}