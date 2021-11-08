// Write a C program to generate following triangle up to n lines. [20 Marks]
//  * * * *
//  * * *
//  * *
//  * 

#include<stdio.h> // include stdio.h

int main() 
{
    int n;

    printf("Enter number of lines: ");
    scanf("%d", &n);

    printf("\n");

    // loop for line number of lines
    for(int i = n; i >= 1; i--)
    {        
        // loop to print *
        for(int j = i; j >= 1; j--)
        {
            printf("* ");
        }               

        printf("\n");
    }

    return 0;
}