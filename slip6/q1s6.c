// Q1. Write a C Program to accept a character from the keyboard and display its previous and
// next character in order. Ex. If character entered is „d‟, display “The previous character
// is c”, “The next character is e”. 




#include <stdio.h>
int main()
{
char ch;
printf("Enter character:\t");
scanf("%c", &ch);
printf("You entered: %c\n", ch);
printf("Previous character: %c\n", ch - 1);
printf("Next character: %c\n", ch + 1);
}