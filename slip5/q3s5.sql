Q3. Consider the following entities and their relationships. Create a RDB in 3 NF with appropriate data types and Constraints. [15 Marks]

Customer (cust_no, cust_name, address, city)

Loan (loan_no, loan_amt)

The relationship between Customer and Loan is Many to Many Constraint: Primary key, loan_amt should be > 0.

 

Connected.





SQL>  create table customer(cno int primary key,cname varchar(20) not null,addr varchar(20),city varchar(10));

 

Table created.

 

SQL> desc customer

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 CNO                                       NOT NULL NUMBER(38)

 CNAME                                     NOT NULL VARCHAR2(20)

 ADDR                                               VARCHAR2(20)

 CITY                                               VARCHAR2(10)

 

SQL> insert into customer values(101,'Dhiraj','kharadi','pune');

 

1 row created.

 

SQL> insert into customer values(102,'Patil','kalptaru','pimpri');

 

1 row created.

 

SQL> insert into customer values(103,'Abhay','west','pimpri');

 

1 row created.

 

SQL> insert into customer values(104,'Raghav','rt','nashik');

 

1 row created.

 

SQL> insert into customer values(105,'Dhanu','bvh','pune');

 

1 row created.

 

SQL> select * from customer;

 

       CNO CNAME                ADDR                 CITY

---------- -------------------- -------------------- ----------

       101 Dhiraj               kharadi              pune

       102 Patil                kalptaru             pimpri

       103 Abhay                west                 pimpri

       104 Raghav               rt                   nashik

       105 Dhanu                bvh                  pune

 

SQL> create table loan(lno int primary key,lamt int check(lamt>0),cno int references customer on delete cascade);

 

Table created.

 

SQL>

SQL> insert into loan values(1,120000,101);

 

1 row created.

 

SQL> insert into loan values(2,100000,102);

 

1 row created.

 

SQL> insert into loan values(3,30000,103);

 

1 row created.

 

SQL> insert into loan values(4,120,104);

 

1 row created.

 

SQL> insert into loan values(5,1000000,105);

 

1 row created.

 

SQL> select * from loan;

 

       LNO       LAMT        CNO

---------- ---------- ----------

         1     120000        101

         2     100000        102

         3      30000        103

         4        120        104

         5    1000000        105

 

Q.3Consider the above tables and execute the following queries:

 1. Add Phone_No column in customer table with data type int.

 

SQL> alter table customer

  2  add phone_no int;

 

Table altered.

 

SQL> desc customer

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 CNO                                       NOT NULL NUMBER(38)

 CNAME                                     NOT NULL VARCHAR2(20)

 ADDR                                               VARCHAR2(20)

 CITY                                               VARCHAR2(10)

 PHONE_NO                                           NUMBER(38)

 

2)Delete the details of customer whose loan_amt<1000.

Delete cno,cname,addr,city, from customer

Where customer.cno=loan.cno

And lamt<1000;

 