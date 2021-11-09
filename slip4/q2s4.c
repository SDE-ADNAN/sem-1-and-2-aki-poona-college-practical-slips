// Q2. Create a structure Student (id, name, marks). Accept details of n students and write a menu
// driven program to perform the following operations. [20 Marks]
// a) Search student by id
// b) Display all students


#include<stdio.h>
#include<conio.h>
struct stu
{
   int id,marks;
   char name[20];
}s[100];
void accept(int n) // To accept all student information
{
   printf("\nEnter student id: ");
   scanf("%d",&s[n].id);
   printf("\nEnter student name: ");
   scanf("%s",s[n].name);
   printf("\nEnter student marks: ");
   scanf("%d",&s[n].marks);
}
void display(int n) // To display all student information
{
   printf("\nstudent id:\t\t%d",s[n].id);
   printf("\nName:\t\t\t%s",s[n].name);
   printf("\nMarks:\t\t\t%d\n",s[n].marks);
}
void main()
{
   int c,n,i,Id,flag=0;
   do
   {
      printf("\n1.Accept Details\n2.Display Details\n3.Search student by Id \n4.Exit\nEnter your                                     choice:");
      scanf("%d",&c);
      switch(c)
      {
      	case 1:
            printf("Enter the number of students:");
            scanf("%d",&n);
            for(i=0;i<n;i++)
            {
         		accept(i);
            }
            break;
         case 2:printf("\n===============Details of students=====================\n");
         		for(i=0;i<n;i++)
                       {
         		 	display(i);
                       }
                break;
         case 3: printf("Enter the student Id: ");
         			scanf("%d",&Id);
                  for(i=0;i<n;i++)
                  {
                      if(Id==s[i].id)
                      {
                        display(i);
                        flag=1;
                        break;
                     }
                  }
                  if(flag==0)
                  {
                  	printf("\nMatch nit found");
                  }
                  break;
      }
   }while(c<4);
}