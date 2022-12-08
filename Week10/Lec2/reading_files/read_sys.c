#include <stdio.h>
#include <fcntl.h>
#include <stdbool.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char* argv[])
{
	int fd = open("/etc/hosts", O_RDONLY);
	if (fd < 0)
	{
		fprintf(stderr, "Failed to open a file\n");
		exit(1);
	}

	const size_t buff_size = 16;
	char *buffer = malloc(buff_size);

	while (true)
	{
		size_t chunk = read(fd, buffer, buff_size);
		if (chunk == 0)
		{
			fprintf(stdout, "We're done reading the file\n");
			break;
		}

		buffer[chunk] = '\0';
		fprintf(stdout, "%s", buffer);
	}

	fprintf(stdout, "\n");
	return 0;
}
