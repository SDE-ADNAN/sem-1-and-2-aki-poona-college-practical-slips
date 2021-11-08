#include<conio.h>
#include<iostream.h>
void main()
{
            int a,b,c,d,e,f,g;
            clrscr();
            cout<<"\n Enter First Number a : ";
            cin>>a;
            cout<<"\n Enter Second Number b : ";
            cin>>b;
            c=a+b;
            d=a-b;
            e=a*b;
            f=a/b;
            g=a%b;
            cout<<" Addition = "<<c<<"\n";
            cout<<" Subtraction = "<<d<<"\n";
            cout<<" Multiplication = "<<e<<"\n";
            cout<<" Division = "<<f<<"\n";
            cout<<" Modulus = "<<g<<"\n";
            getch();
}