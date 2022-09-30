#include <stdio.h>

#define NUM_BITS 32

int main(int argc, char* argv[])
{
	int x = 15213;
	printf("x before shift %d\n", x);

	x = x << NUM_BITS;
	printf("x after shift by 4 bytes %d\n", x);

	return 0;
}
