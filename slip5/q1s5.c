// Write a C program to accept dimensions length (l), breadth(b) and 
// height(h) of a cuboids and display surface area and volume (Hint : surface area=2(lb+lh+bh ), volume=lbh )

#include<stdio.h>
#include<conio.h>

  
int main()
{
    float l,b,h,SA,Vol;
    
    printf("\nEnter the length, breadth and height :");
    scanf("%f%f%f",&l,&b,&h);
    
    SA = 2 *(l * b + l * h + b * h);
    Vol = (l * b * h);
    printf("\nThe surface area is %.3f",SA);
    printf("\nThe volume is %.3f", Vol);
   
   return 0;
}
