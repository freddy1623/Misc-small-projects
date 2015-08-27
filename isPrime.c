#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
    if (argc != 2)
    {
        printf("Usage = ./isPrime <n>");
        return -1;
    }
    
    int n = atoi(argv[1]);
    int results = 0;
    
    for (int i = 1; i < n + 1; i++)
    {
        if (n % i == 0)
        {
            printf("%i is divisible by %i\n", n, i);
            results++;
        }
    }
    if (results == 2)
    {
        printf("%i is a prime.\n", n);
    }
    else
    {
        printf("%i is not a prime, as it's divisible by %i numbers other than 1 and %i\n", n, results - 2, n);
    }
}
