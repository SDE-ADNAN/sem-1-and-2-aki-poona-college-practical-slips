// Write a C program to accept temperatures in Fahrenheit (F) and display it in Celsius(C) and Kelvin (K) (Hint: C=5.0/9(F-32), K = C + 273.20)
#include <stdio.h>
#include <conio.h>
  
int main()
{
    float C,K,F;
    
    printf("\nEnter the temperature in Fahrenheit :");
    scanf("%f",&F);
    
    C=(F-32)/0.55;
    printf("\nThe temperature in Celsius is %f", C);
    
    K = C + 273.20;
    printf("\nThe temperature in Kelvin is %f", K);  
    
    return 0;
}
