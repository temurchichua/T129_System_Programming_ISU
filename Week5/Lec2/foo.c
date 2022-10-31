#include <stdio.h>

int sum(int x, int y)
{
	return x + y;
}

int main()
{
	int res = sum(15, 213);

	printf("res = %d\n", res);

	return 0;
}
