// Write a C++ program to check maximum and minimum of two integer numbers.
// (Use Inline Function and Conditional Operator).


#include<iostream.h>
#include<conio.h>
class max
{
public:
inline int maximum(int a,int b)
{
return a>b?a:b;
}
};
void main()
{
int a,b;
max m;
clrscr();
cout<<“\nEnter two number: “;
cin>>a>>b;
cout<<“\nNumber 1st: “<<a<<endl;
cout<<“\nNumber 2nd: “<<b<<endl;
cout<<“\nMaximum number is: “<<m.maximum(a,b)<<endl;
getch();
}