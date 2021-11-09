// Write a C program to accept two numbers and print arithmetic and harmonic mean of
// the two numbers (Hint: AM= (a+b)/2 ,HM = ab/(a+b) )

#include<stdio.h>
#include<conio.h>

  
int main()
{
    int a,b,AM,HM;
    
    printf("\nEnter the two numbers : ");
    scanf("%d%d",&a,&b);
    
    AM=(a+b)/2;
    printf("\nThe arithmetic mean of two numbers is : %d", AM);
    
    HM=(a*b)/(a+b);
    printf("\nThe harmonic mean of two numbers is : %d", AM);
    
    return 0;
}
