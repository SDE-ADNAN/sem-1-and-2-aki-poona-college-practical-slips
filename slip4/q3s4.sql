-- Q3. Consider the following entities and their relationships. Create a RDB in 3 NF with
-- appropriate data types and Constraints. [20 Marks] Patient (PCode, Name, Addr,
-- Disease)
-- Bed (Bed_No, RoomNo, loc)
-- Relationship: - There is one-one relationship between patient and bed.
-- Constraints: - Primary key, RoomNo must be greater than Bed_No, Addr should not be null.
-- Consider the above tables and execute the following queries:
-- 1. Display the details of patients who are from “Pimple Gurav”.
-- 2. Delete the details of patient whose Bed_No is 1 and RoomNo is 105

Slip no-4:Q3. Consider the following entities and their relationships. Create a RDB in 3 NF with appropriate data types and Constraints. [15 Marks]

Patient (PCode, Name, Addr, Disease)

Bed (Bed_No, RoomNo, loc)

Relationship: - There is one-one relationship between patient and bed. Constraints: - Primary key, RoomNo must be greater than Bed_No, Addr should not be null.

SQL> create table patient(pcode int primary key,name varchar(20) not null,addr varchar(20),disease varchar(10));

 

Table created.

 

SQL> desc patient;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 PCODE                                     NOT NULL NUMBER(38)

 NAME                                      NOT NULL VARCHAR2(20)

 ADDR                                               VARCHAR2(20)

 DISEASE                                            VARCHAR2(10)

 

SQL> insert into patient values(11,'Raghav','pimple gurav','listeria');

 

1 row created.

 

SQL> insert into patient values(12,'Abhay','pune','norovirus');

 

1 row created.

 

SQL> insert into patient values(13,'Mr.Roy','mumbai','cholera');

 

1 row created.

 

SQL> insert into patient values(14,'Sachin','pimple gurav','dengue');

 

1 row created.

 

SQL> insert into patient values(15,'Priya','nashik','listeria');

 

1 row created.

 

SQL> select * from patient;

 

     PCODE NAME                 ADDR                 DISEASE

---------- -------------------- -------------------- ----------

        11 Raghav               pimple gurav         listeria

        12 Abhay                pune                 norovirus

        13 Mr.Roy               mumbai               cholera

        14 Sachin               pimple gurav         dengue

        15 Priya                nashik               listeria

 

SQL> create table bed(bno int primary key,rno int not null,loc varchar(10) not null,pcode int references patient on delete cascade);

 

Table created.

 

SQL> desc bed;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 BNO                                       NOT NULL NUMBER(38)

 RNO                                       NOT NULL NUMBER(38)

 LOC                                       NOT NULL VARCHAR2(10)

 PCODE                                              NUMBER(38)

 

 

SQL> insert into bed values(1,105,'pune',11);

 

1 row created.

 

SQL> insert into bed values(2,102,'2nd floor',12);

 

1 row created.

 

SQL> insert into bed values(3,103,'4th floor',13);

 

1 row created.

 

SQL> insert into bed values(4,104,'1st floor',11);

 

1 row created.

 

SQL> insert into bed values(5,105,'3rd floor',14);

 

1 row created.

 

SQL> insert into bed values(6,106,'2nd floor',15);

 

1 row created.

 

SQL> select * from bed;

 

       BNO        RNO LOC             PCODE

---------- ---------- ---------- ----------

         1        105 pune               11

         2        102 2nd floor          12

         3        103 4th floor          13

         4        104 1st floor          11

         5        105 3rd floor          14

         6        106 2nd floor          15

 

6 rows selected.

 

Q.3Consider the above tables and execute the following queries:

1. Display the details of patients who are from “Pimple Gurav”

 

SQL> select * from patient

  2  where addr='pimple gurav';

 

     PCODE NAME                 ADDR                 DISEASE

---------- -------------------- -------------------- ----------

        11 Raghav               pimple gurav         listeria

        14 Sachin               pimple gurav         dengue

 

2.   Delete the details of patient whose Bed_No is 1 and RoomNo is 105.

SQL> select * from patient,bed

  2  where patient.pcode=bed.pcode

  3  and bno=1 and rno=105;

 

     PCODE NAME                 ADDR                 DISEASE           BNO

---------- -------------------- -------------------- ---------- ----------

       RNO LOC             PCODE

---------- ---------- ----------

        11 Raghav               pimple gurav         listeria            1

       105 pune               11