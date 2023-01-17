#include "../../csapp-lib/csapp.h"

int main(void)
{
    pid_t pid;

    /* Child process sleeps until SIGKILL signal received, then dies*/
    if ((pid = Fork()) == 0)
    {
        Pause(); // Wait for a signal to arrive
        printf("control should never reched here!\n");
        exit(0);
    }

    /* Parent sends a SIGKILL signal to a child */
    Kill(pid, SIGKILL);

    exit(0);
}