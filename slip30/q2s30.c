#include <stdio.h>
int main()
{    
      int nodd,neven,num,digit,zero=0 ;
      printf("Enter four digit number: ");
      scanf("%d",&num);
      while (num> 0)
      {
            digit = num % 10; /* separate LS digit from number */
            num /= 10;
            if(digit != 0 && digit % 2 == 0)
            {
                  neven++;
            }
            else if(digit==0)
            {
                  zero++;
            }
            else
            {
                  nodd++;
            }
      }
      printf("\nOdd digit : %d \nEven digit : %d\nZeros : %d", nodd, neven,zero);
      return 0;              
}