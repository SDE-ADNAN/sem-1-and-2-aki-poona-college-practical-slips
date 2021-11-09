Q4. Consider the above tables and execute the following queries: [25 Marks]

1.   Find details of all customers whose loan_amt is greater than 10 lack.

 

SQL> select * from customer,loan

  2  where customer.cno=loan.cno

  3  and lamt>1000000;

 

no rows selected

 

2.   List all customers whose name starts with 'D' character.

SQL> select * from customer

  2  where cname like 'D%';

 

       CNO CNAME                ADDR                 CITY         PHONE_NO

---------- -------------------- -------------------- ---------- ----------

       101 Dhiraj               kharadi              pune

       105 Dhanu                bvh                  pune

 

3. List the names of customer in descending order who has taken a loan from Pimpri city.

SQL> select * from customer

  2  where city='pimpri'

  3  order by cname desc;

 

       CNO CNAME                ADDR                 CITY         PHONE_NO

---------- -------------------- -------------------- ---------- ----------

       102 Patil                kalptaru             pimpri

103hay                west                 pimpri

 

4.Display customer details having maximum loan amount

SQL> select max(lamt) from customer,loan

  2  where customer.cno=loan.cno;

 

 MAX(LAMT)

----------

   1000000

 

 5.Update the address of customer whose name is “Mr. Patil” and loan_amt is greater than 100000.

 

update customer set addr='pune'

where cname='patil' and lno in(select lno from laon where lamt>100000);