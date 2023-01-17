#include "../../csapp-lib/csapp.h"

/* SIGINT handler */
void sigint_handler(int sig)
{
    printf("Caought SIGINT\n");
    exit(0);
}

int main(void)
{
    /* Install the SIGINT handler */
    if (signal(SIGINT, sigint_handler) == SIG_ERR)
        unix_error("signal error");

    Pause();

    return 0;
}