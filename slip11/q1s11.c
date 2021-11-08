#include<stdio.h>
#include<conio.h>
void main()
{
	int cp,sp; //cp=cost price, sp=selling price
   float profit,loss;

   //accept cost price and cost price
   printf("\nEnter cost price: ");
   scanf("%d",&cp);
   printf("\nEnter selling price: ");
   scanf("%d",&sp);

   //check selling price is greater than cost price or not
   if(sp<cp)
   {
   	loss=(cp-sp);
   	printf("\nSeller has made loss");
      printf("\nloss = %f Rs.",loss);
   }
   else if(sp>cp)
   {
   	profit=(sp-cp);
   	printf("seller has made profit");
      printf("\nprofit= %f Rs.",profit);
   }
   else
   {
   	printf("seller has made nor profit nor loss");
   }
   getch();
}