#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>

typedef uint32_t u32;

int comp (const void * elem1, const void * elem2)
{
    int f = *((int*)elem1);
    int s = *((int*)elem2);
    if (f > s) return  1;
    if (f < s) return -1;
    return 0;
}
int main(int argc, char* argv[])
{
    int y[32], x[] = {15, 30, 29, 28, 10, 26, 25, 24, 23, 22, 21, 4, 19, 18, 17,
                      16, 31, 14, 13, 12, 11, 27, 9, 8, 7, 6, 5, 20, 3, 2, 1, 0};

    double lim = pow(2, 22);

    for (u32 i = 0; i < lim; i++) {
      memcpy(y, x, sizeof(x));
      qsort (y, sizeof(y)/sizeof(*y), sizeof(*y), comp);
    }

    // print result
    for (int i = 0 ; i < 32 ; i++)
        printf ("%d, ", y[i]);
    printf("\n");
    return 0;
}
