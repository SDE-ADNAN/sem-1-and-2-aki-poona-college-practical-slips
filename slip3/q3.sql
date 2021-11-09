-- Q3. Consider the following entities and their relationships. Create a RDB in 3 NF with
-- appropriate data types and Constraints. [20 Marks]
-- Hospital (hno ,hname , city, Est_year, addr)
-- Doctor (dno , dname , addr, Speciality)
-- The relationship between Hospital and Doctor is one - to – Many
-- Constraints: - Primary Key, Est_year should be greater than 1990.
-- Consider the above tables and execute the following queries:
-- 1. Delete addr column from Hospital table.
-- 2. Display doctor name, Hospital name and specialty of doctors from “Pune City” .






Soluation:-----------

SQL> create table hospital(hno int primary key,hname varchar(20),city varchar(20),est_year numeric(4) check(est_year>1990),addr varchar(20));

 

Table created.

 

SQL> desc hospital;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 HNO                                       NOT NULL NUMBER(38)

 HNAME                                              VARCHAR2(20)

 CITY                                               VARCHAR2(20)

 EST_YEAR                                           NUMBER(4)

 ADDR                                               VARCHAR2(20)

 

SQL> insert into hospital values(101,'balaji','pune',1993,'kharadi road');

 

1 row created.

 

SQL>  insert into hospital values(103,'vedant','mumbai',1993,'dharavi');

 

1 row created.

 

SQL> insert into hospital values(104,'ruby','pimpri',1993,'kharadi road');

 

1 row created.

 

SQL> insert into hospital values(105,'birla','chinchwad',1993,'tyr');

 

1 row created.

 

SQL> insert into hospital values(106,'qw','pune',1993,'kalptaru');

 

1 row created.

 

SQL> select * from hospital;

 

       HNO HNAME                CITY                   EST_YEAR

---------- -------------------- -------------------- ----------

ADDR

--------------------

       101 balaji               pune                       1993

kharadi road

 

       103 vedant               mumbai                     1993

dharavi

 

       104 ruby                 pimpri                     1993

kharadi road

 

 

       HNO HNAME                CITY                   EST_YEAR

---------- -------------------- -------------------- ----------

ADDR

--------------------

       105 birla                chinchwad                  1993

tyr

 

       106 qw                   pune                       1993

kalptaru

 

SQL> create table doctor(dno int primary key,dname varchar(20),addr1 varchar(20),speciality varchar(20),hno int references hospital on delete cascade);

 

Table created.

 

SQL> desc doctor;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 DNO                                       NOT NULL NUMBER(38)

 DNAME                                              VARCHAR2(20)

 ADDR                                               VARCHAR2(20)

 SPECIALITY                                         VARCHAR2(20)

 HNO                                                NUMBER(38)

 

SQL> insert into doctor values(1,'dr.joshi','pune','skin',104);

 

1 row created.

 

SQL> insert into doctor values(2,'dr.mane','nashik','surgeon',103);

 

1 row created.

 

SQL> insert into doctor values(3,'dr.patil','pune','gynecologist',101);

 

1 row created.

 

SQL> insert into doctor values(4,'dr.Raghav','pune','skin',105);

 

1 row created.

 

SQL> insert into doctor values(5,'dr.Abhay','mumbai','internist',104);

 

1 row created.

 

SQL> insert into doctor values(6,'dr.joshi','pune','surgeon',106);

 

1 row created.

 

SQL> insert into doctor values(7,'dr.Riya','pune','skin',103);

 

1 row created.

 

SQL> insert into doctor values(8,'dr.Gawade','pune','head',104);

 

1 row created.

 

SQL> select * from doctor;

 

       DNO DNAME                ADDR                 SPECIALITY

---------- -------------------- -------------------- --------------------

       HNO

----------

         1 dr.joshi             pune                 skin

       104

 

         2 dr.mane              nashik               surgeon

       103

 

         3 dr.patil             pune                 gynecologist

       101

 

 

       DNO DNAME                ADDR                 SPECIALITY

---------- -------------------- -------------------- --------------------

       HNO

----------

         4 dr.Raghav            pune                 skin

       105

 

         5 dr.Abhay             mumbai               internist

       104

 

         6 dr.joshi             pune                 surgeon

       106

 

 

       DNO DNAME                ADDR                 SPECIALITY

---------- -------------------- -------------------- --------------------

       HNO

----------

         7 dr.Riya              pune                 skin

       103

 

         8 dr.Gawade            pune                 head

       104

 

 

SQL> alter table hospital
        drop column addr;




2. Display doctor name, Hospital name and specialty of doctors from “Pune City” .

SQL> select dname,hname,speciality from doctor,hospital

  2  where doctor.hno=hospital.hno

  3  and city='pune';

 

DNAME                HNAME                SPECIALITY

-------------------- -------------------- --------------------

dr.patil             balaji               gynecologist

dr.joshi             qw                   surgeon

 