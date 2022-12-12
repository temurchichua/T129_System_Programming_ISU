#include "../../csapp-lib/csapp.h"

#define BUF_SIZE 32

int main(void) 
{
    char c[BUF_SIZE];

    while(Read(STDIN_FILENO, &c, BUF_SIZE) != 0) 
      Write(STDOUT_FILENO, &c, BUF_SIZE);
    exit(0);
}
