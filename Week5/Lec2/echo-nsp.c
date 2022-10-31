#include <stdio.h>

#define MSG_SIZE 4

void echo()
{
	char buf[MSG_SIZE];
	gets(buf);
	puts(buf);
}

void call_echo()
{
	echo();
}

int main(int argc, char* argv[])
{
	call_echo();

	return 0;
}
