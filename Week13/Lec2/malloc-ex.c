#include <stdio.h>
#include <stdlib.h>

void foo(int n) {
    /* Allocate a block of n ints */
    int *p = (int *) malloc(n * sizeof(int));
    if (p == NULL) {
        perror("malloc");
        exit(0);
    }
  
    /* Initialize allocated block */
    for (size_t i=0; i<n; i++) {
        p[i] = i;
		printf("Elemnt %d is at address %p\n", p[i], &p[i]);
	}

  
    /* Return allocated block to the heap */
    free(p); 
}

int main(void)
{
	foo(15);
}
