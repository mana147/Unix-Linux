#include <stdio.h>

int main (int argc , char** argv) 
{
    printf ("%d \n" , argc);
    printf ("%s \n" , argv[0]);

    int i =1 ;
    for ( i = 0; i < argc ; i++)
    {
        printf ("%s \n ", argv[i]);
    }

    return 0;
}