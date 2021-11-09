// 2. Write a menu driven program to perform the following operations on strings using standard
// library functions: [20 Marks]
// 1. Length of String
// 2. Copy String
// 3. Connect Two Strings
// 4. Compare two strings





#include<stdio.h>
#include<string.h>
#include<stdlib.h>
int main()
{
    char str1[20],str2[20];
    int ch,i,j;
    do
    {
        printf("\tMENU");
        printf("\n------------------------------\n");
        printf("1:Find Length of String");
        printf("\n2:Find Reverse of String");
        printf("\n3:Concatenate Strings");
        printf("\n5:Copy String ");
        printf("\n5:Compare Strings");
        printf("\n6:Exit");
        printf("\n------------------------------\n");
        printf("\nEnter your choice: ");
        scanf("%d",&ch);
        switch(ch)
        {
            case 1:
                printf("Enter String: ");
                scanf("%s",str1);
                i=strlen(str1);
                printf("Length of String : %d\n\n",i);
            break;
            case 2:
                printf("Enter String: ");
                scanf("%s",str1);
                strrev(str1);
                printf("Reverse string : %s\n\n",str1);
            break;
            case 3:
                printf("\nEnter First String: ");
                scanf("%s",str1);
                printf("Enter Second string: ");
                scanf("%s",str2);
                strcat(str1,str2);
                printf("String After Concatenation : %s\n\n",str1);
            break;
            case 4:
                printf("Enter a String1: ");
                scanf("%s",str1);
                printf("Enter a String2: ");
                scanf("%s",str2);
                printf("\nString Before Copied:\nString1=\"%s\",String2=\"%s\"\n",str1,str2);
                strcpy(str2,str1);
                printf("-----------------------------------------------\n");
                printf("\"We are copying string String1 to String2\" \n");
                printf("-----------------------------------------------\n");
                printf("String After Copied:\nString1=\"%s\", String2=\"%s\"\n\n",str1,str2);
            break;
            case 5:
                printf("Enter First String: ");
                scanf("%s",str1);
                printf("Enter Second String: ");
                scanf("%s",str2);
                j=strcmp(str1,str2);
                if(j==0)
                {
                    printf("Strings are Same\n\n");
                }
                else
                {
                    printf("Strings are Not Same\n\n");
                }
            break;
            case 6:
                exit(0);
            break;
            default:
                printf("Invalid Input. Please Enter valid Input.\n\n ");
        }
    }while(ch!=6);
    return 0;
}