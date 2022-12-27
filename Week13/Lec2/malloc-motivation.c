#include "../../csapp-lib/csapp.h"

#define MAXN 15213

int array[MAXN];

int main(void)
{
    int n;

    scanf("%d", &n);
    if (n > MAXN)
        app_error("Input file too big");
    
    for (size_t i = 0; i < n; i++)
        scanf("%d", &array[i]);

    return 0;
}