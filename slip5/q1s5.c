// Q1. Write a C program to accept dimensions length (l), breadth(b) and height(h) of a
// cuboids and display surface area and volume (Hint : surface area=2(lb+lh+bh ),
// volume=lbh )


#include<conio.h>
#include<stdio.h>
void main()
{
   float l,b,h,area,volume; // l=length , b=breadth , h=height
   printf("\nEnter value of lenght:");
   scanf("%f",&l);
   printf("\nEnter value of breadth:");
   scanf("%f",&b);
   printf("\nEnter value of height:");
   scanf("%f",&h);
   //formula of surface area of a  cuboids
   area=2*(l*b+l*h+b*h);
   //formula of volume of a  cuboids
   volume=l*b*h;
   printf("\nSurface area of cuboids: %f",area);
   printf("\nVolume of cuboids: %f",volume);
   getch();
}