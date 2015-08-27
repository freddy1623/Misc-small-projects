#include <stdio.h>

int main(void)
{
    for(int i = 0; i < 100; i++)
        i % 3 == 0 && i % 5 == 0 ? printf("FizzBuzz\n") : i % 3 == 0 ? printf("Fizz\n") : i % 5 == 0 ? printf("Buzz\n") : printf("%i\n", i);
}
