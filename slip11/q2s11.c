#include<stdio.h>
#include<conio.h>

   //To calculate area of circle
	void area()
   {
   	float radius,area_of_circle;
      printf("\nEnter radius of circle: ");
      scanf("%f",&radius);
      area_of_circle=(3.142*radius*radius);
      printf("\nArea of Circle: %f",area_of_circle);
   }

   //To calculate Circumference of circle
   void circumference()
   {
   	float radius,circumference_of_circle;
      printf("\nEnter radius of circle: ");
      scanf("%f",&radius);
      circumference_of_circle=2*3.142*radius;
      printf("\nCircumference of Circle: %f",circumference_of_circle);
   }

   //To calculate Volume of sphere
   void volume()
   {
      float radius,volume_of_sphere;
      printf("\nEnter radius of sphere: ");
      scanf("%f",&radius);
     	volume_of_sphere=4/3*3.142*radius*radius;
      printf("\nVolume of Sphere: %f",volume_of_sphere);
   }

void main()
{
   int ch; //ch=choice
	do
   {
   	//To display menu
    	printf("\n1) Area of Circle\n2) Circumference of Circle\n3) Volume of Sphere\n4) Exit.\nEnter choice : ");
    	scanf("%d",&ch);
      switch(ch)
      {
      	case 1:area();break;
         case 2:circumference();break;
         case 3:volume();break;
      }
   }while(ch!=4);
}