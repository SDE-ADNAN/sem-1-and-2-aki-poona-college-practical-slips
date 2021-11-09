// 1. Write a C program to accept temperatures in Fahrenheit (F) and display it in Celsius(C)
// and Kelvin (K) (Hint: C=5.0/9(F-32), K = C + 273.20)


#include<stdio.h>
#include<conio.h>

int main()
{
	 float celsius, cel, kelvin;
	//  clrscr();
	 printf("Enter temperature in Fhrenheit: ");
	 scanf("%f", &celsius);
	 cel = 5.0/9*(celsius-32);
	 kelvin = 273.20 + celsius;
	 printf("%0.2f Celsius = %0.2f Fahrenheit\n", celsius, cel);
	 printf("%0.2f Celsius = %0.2f Kelvin",celsius, kelvin);
	 getch();
	 
	 return(0);
}