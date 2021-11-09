// Q1. Write a C program to accept two numbers and print arithmetic and harmonic mean of
// the two numbers (Hint: AM= (a+b)/2 ,HM = ab/(a+b) ) [20 Marks]



#include<stdio.h>
#include<conio.h>
void main()
{
   int a,b;
   float AM, HM; // AM=Arithmetic Mean , HM=Harmonic Mean
   
   //Accept 2 numbers
   printf("Enter the 1st number: ");
   scanf("%d",&a);
   printf("Enter the 2nd number: ");
   scanf("%d",&b);
  
   AM=float((a+b))/2; // Formula AM= (a+b)/2
   HM=a*b/float((a+b)); // Formula HM = ab/(a+b)
   
   //To display Arithmetic Mean & Harmonic Mean
   printf("Arithmetic Mean is: %f",AM);
   printf("\nHarmonic Mean is: %f",HM);
   
   getch();
}