#include <stdio.h>
#include <stdlib.h>
int main()
{
    int num,rem,ne=0,no=0,nz=0,anum;
    printf("Enter any Number\n");
    scanf("%d",&num);
    printf("In the given number %d\n",num);
    while(num>0)
    {
        rem=num%10;
        if(rem==0)
        {
            nz++;
        }
        else if(rem%2==0)
        {
            ne++;
        }
        else
        {
            no++;
        }
        num=num/10;
    }
    printf("EVEN number of digits except 0 are %d\n",ne);
    printf("ODD number of digits are %d\n",no);
    printf("number of ZERO digits are %d\n",nz);
    return 0;
}