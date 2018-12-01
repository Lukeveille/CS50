#include <stdio.h>

int main(void)
{
    char word[3];
    char a = 97;
    for (int i = 0; i < 3; i++)
    {
        word[i] = a;
        a++;
        printf("%c", word[i]);
    }
}