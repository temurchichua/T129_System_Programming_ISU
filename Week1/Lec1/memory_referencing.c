#include <stdio.h>

typedef struct
{
	int a[2];
	double d;
}struct_t;

double foo(int i)
{

	volatile struct_t s;
	s.d = 3.14;
	s.a[i] = 15213;
	return s.d;
}

int main(int argc, char* argv[])
{
	foo(0);
	foo(1);
	foo(2);
	foo(3);
	foo(4);
	//foo(6);

	return 0;
}
