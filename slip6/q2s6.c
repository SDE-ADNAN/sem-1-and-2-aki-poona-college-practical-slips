// Write a program to accept a string and then count the occurrences of a specific character of a string.

#include<stdio.h>
#include<conio.h>
void main()
{
   char s[100],ch; // s=string 
   int i,c=0; 
   printf("Enter the string: ");
   gets(s);  //All the characters entered by the user get stored in a character array.
   printf("Enter the charcter: ");
   scanf("%c",&ch); 
   for(i=0;s[i]!='\0';i++)
   {
      if(s[i]==ch)
      c++;
   }
   printf("\nOccurances of %c is %d",ch,c);
  }
