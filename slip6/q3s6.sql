Q3. Consider the following entities and their relationships. Create a RDB in 3 NF with appropriate data types and Constraints. [15 Marks]

Project (pno, pname, start_date, budget, status) Department (dno, dname, HOD, loc)

The relationship between Project and Department is Many to One. Constraint: Primary key. Project Status Constraints:

C – Completed,

P - Progressive,

 I – Incomplete

SQL> create table project(pno int primary key,pname varchar(20),sdate date,budget int,status varchar(20) check(status in('c','i','p')));

 

Table created.

 

SQL> desc project;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 PNO                                       NOT NULL NUMBER(38)

 PNAME                                              VARCHAR2(20)

 SDATE                                              DATE

 BUDGET                                             NUMBER(38)

 STATUS                                             VARCHAR2(20)

 

SQL> insert into project values(1,'abc','09/mar/20',2300000,'c');

 

1 row created.

 

SQL>  insert into project values(2,'xyz','01/apr/18',200000,'i');

 

1 row created.

 

SQL>  insert into project values(3,'st','23/mar/27',1200000,'p');

 

1 row created.

 

SQL> insert into project values(4,'vb','12/feb/20',600000,'c');

 

1 row created.

 

SQL>  insert into project values(5,'qrt','16/jan/23',3400000,'p');

 

1 row created.

 

SQL> select * from project;

PNO       PNAME                SDATE         BUDGET STATUS

---------- -------------------- --------- ---------- --------------------

         1 abc                  09-MAR-20    2300000 c

         2 xyz                  01-APR-18     200000 i

         3 st                   23-MAR-27    1200000 p

         4 vb                   12-FEB-20     600000 c

         5 qrt                  16-JAN-23    3400000 p

SQL> create table department(dno int primary key,dname varchar(20),hod varchar(20),loc varchar(20),pno int references project on delete cascade);

 

Table created.

 

SQL> desc department

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 DNO                                       NOT NULL NUMBER(38)

 DNAME                                              VARCHAR2(20)

 HOD                                                VARCHAR2(20)

 LOC                                                VARCHAR2(20)

 PNO                                                NUMBER(38)

 

SQL> insert into department values(101,'computer','desai','pune',1);

 

1 row created.

 

SQL> insert into department values(102,'commerce','mane','pune',2);

 

1 row created.

 

SQL> insert into department values(103,'computer','kadam','pune',3);

 

1 row created.

 

SQL> insert into department values(104,'engineering','sam','pune',4);

 

1 row created.

 

SQL> select * from department;

 

       DNO DNAME                HOD                  LOC

---------- -------------------- -------------------- --------------------

       PNO

----------

       101 computer             desai                pune

         1

 

       102 commerce             mane                 pune

         2

 

       103 computer             kadam                pune

         3

 

 

       DNO DNAME                HOD                  LOC

---------- -------------------- -------------------- --------------------

       PNO

----------

       104 engineering          sam                  pune

         4

 

Consider the above tables and execute the following queries:

1.   Drop loc column from department table.

 

      alter table department

drop  column loc;

 

2. Display the details of project whose start_date is before one month and status is “Progressive”

 

SQL> select * from project

  2  where sdate>'12/feb/20' and status='p';

 

       PNO PNAME                SDATE         BUDGET STATUS

---------- -------------------- --------- ---------- --------------------

         3 st                   23-MAR-27    1200000 p

         5 qrt                  16-JAN-23    3400000 p