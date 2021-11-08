Q3. Consider the following entities and their relationships. Create a RDB in 3 NF with appropriate data types and Constraints. [15 Marks]

Property (pno, desc, area, rate)

Owner (owner_name, addr, phno) The relationship between owner and Property is One to Many. Constraint: Primary key, rate should be > 0

SQL>  create table property(pno int primary key,des varchar(20) not null,area varchar(20) not null,rate int check(rate>0));

 

Table created.

 

SQL> desc property;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 PNO                                       NOT NULL NUMBER(38)

 DES                                       NOT NULL VARCHAR2(20)

 AREA                                      NOT NULL VARCHAR2(20)

 RATE                                               NUMBER(38)

 

SQL> insert into property values(101,'vegr','nashik',1030000);

 

1 row created.

 

SQL> insert into property values(102,'tr','Pune',100000);

 

1 row created.

 

SQL> insert into property values(103,'vbh','pune',1030000);

 

1 row created.

 

SQL> insert into property values(104,'vsdr','mumbai',20000);

 

1 row created.

 

SQL> insert into property values(105,'hjjr','nashik',10000);

 

1 row created.

 

SQL> select * from property;

 

       PNO DES                  AREA                       RATE

---------- -------------------- -------------------- ----------

       101 vegr                 nashik                  1030000

       102 tr                   Pune                     100000

       103 vbh                  pune                    1030000

       104 vsdr                 mumbai                    20000

       105 hjjr                 nashik                    10000

SQL> create table owner(name varchar(20),addr varchar(20),phno int,pno int references property);

 

Table created.

 

SQL> desc owner;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 NAME                                               VARCHAR2(20)

 ADDR                                               VARCHAR2(20)

 PHNO                                               NUMBER(38)

 PNO                                                NUMBER(38)

 

SQL> insert into owner values('Mr.Mane','Mumbai',1762386534,101);

 

1 row created.

 

SQL> insert into owner values('Mr.Patil','Mumbai',1762386534,102);

 

1 row created.

 

SQL> insert into owner values('Mr.Joshi','Pune',6892386534,103);

 

1 row created.

 

SQL> insert into owner values('Mr.Bhagat','Pune',6876783865,101);

 

1 row created.

 

SQL> insert into owner values('Mr.Abhay','Pune',6753386534,104);

 

1 row created.

 

SQL> select * from owner;

 

NAME                 ADDR                       PHNO        PNO

-------------------- -------------------- ---------- ----------

Mr.Mane              Mumbai               1762386534        101

Mr.Patil             Mumbai               1762386534        102

Mr.Joshi             Pune                 6892386534        103

Mr.Bhagat            Pune                 6876783865        101

Mr.Abhay             Pune                 6753386534        104

 

Consider the above tables and execute the following queries:

1. Display area of property whose rate is less than 100000

 

SQL> select area from property

  2  where rate>100000;

 

AREA

--------------------

nashik

pune

 

2.   Give the details of owner whose property is at “Pune”

SQL> select * from owner

  2  where addr='Pune';

 

NAME                 ADDR                       PHNO        PNO

-------------------- -------------------- ---------- ----------

Mr.Joshi             Pune                 6892386534        103

Mr.Bhagat            Pune                 6876783865        101

Mr.Abhay             Pune                 6753386534        104