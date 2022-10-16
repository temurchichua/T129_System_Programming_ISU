#include <stdio.h>

int main(int argc, char* argv[])
{
	int x = 2;
	int res = 0;

	switch (x)
	{
		case 1:
			res = 1;
			break;
		case 2:
			res = 2;
		case 3:
			/* One of the worst design decicion EVER */
			res += 1;
			break;
		default:
			x = 0;
	}
	
	printf("res = %d\n", res);
	
	return 0;
}
