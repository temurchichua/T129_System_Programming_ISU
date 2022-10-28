#include <stdio.h>

#define MSG_SIZE 8

/* Get string from stdin */
char *gets(char *dest)
{
	int c = getchar();
	char *p = dest;
	while (c != EOF && c != '\n')
	{
		*p++ = c;
		c = getchar();
	}
	*p = '\0';

	return dest;
}

int main(int argc, char* argv[])
{
	char buf[MSG_SIZE];

	gets(buf);

	printf("%s\n", buf);

	return 0;
}
