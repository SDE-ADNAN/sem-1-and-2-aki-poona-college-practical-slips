#include<stdio.h>
#include<conio.h>
int main()
{
	int a,b,i,j;

   //accept starting number and ending number
	printf("\nEnter starting number: ");
   scanf("%d",&a);
   printf("\nEnter ending number: ");
   scanf("%d",&b);

   //printing starting table till ending table
   for(i=a;i<=b;i++)
   {
   	for(j=1;j<=10;j++)
      {
      	printf("%d\n",i*j);
      }
      printf("\n\n");
   }
   getch();
   return(0);
}