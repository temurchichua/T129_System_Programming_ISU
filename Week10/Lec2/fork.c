#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

int main(void)
{
	int x = 0;

	int pid = fork();
	if (pid < 0)
	{
		fprintf(stderr, "Fork failed");
		exit(1);
	}

	if (pid == 0)
	{
		/* Inside chile process */
		x += 1;
		printf("Value of x in CHILD process is %d\n", x);
	}else if (pid > 0)
	{
		/* Inside parent process */
		x -= 1;
		printf("Value of x in PARENT process is %d\n", x);
	}

	return EXIT_SUCCESS;
}
