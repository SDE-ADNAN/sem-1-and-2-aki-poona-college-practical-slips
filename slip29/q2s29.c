#include<stdio.h> 
int fun(int n){ 
    int temp=1; 
    while(n>10){ 
        n/=10; 
        temp*=10; 
    } 
    return temp; 
} 
void main(){ 
    int num,temp,t,z; 
    scanf("%d",&num); 
    temp=fun(num); 
    while(temp>0){ 
        t=num/temp; 
  
        printf("%d\t",t%10); 
         
        temp/=10; 
    } 
     
} 