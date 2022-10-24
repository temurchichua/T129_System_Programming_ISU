#include <stdio.h>

#define SIZE 5

int arr_sum(int *arr, int size)
{
	int sum = 0;
	for (size_t i=0; i<size; i++)
	{
		sum += arr[i];
	}

	return sum;
}

int main(int argc, char* argv[])
{
	int my_arr[SIZE] = {1, 2, 3, 4, 5};
	int sum = arr_sum(my_arr, SIZE);

	printf("sum = %d\n", sum);

	return 0;
}
