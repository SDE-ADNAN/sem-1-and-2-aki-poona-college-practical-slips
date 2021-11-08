Slip_no:11:Q3. Consider the following entities and their relationships. Create a RDB in 3 NF with appropriate data types and Constraints. [15 Marks]

Bill (billno, day, tableno, total)

 Menu (dish_no, dish_desc, price)

The relationship between Bill and Menu is Many to Many with quantity as descriptive attribute.

 Constraint: Primary key, price should be > 0.

SQL>  create table bill(bno int primary key not null,day varchar(10),tbno int,total int);

 

Table created.

 

SQL> desc bill;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 BNO                                       NOT NULL NUMBER(38)

 DAY                                                VARCHAR2(10)

 TBNO                                               NUMBER(38)

 TOTAL                                              NUMBER(38)

 

SQL> insert into bill values(301,'monday',109,1120);

 

1 row created.

 

SQL> insert into bill values(302,'sunday',123,9120);

 

1 row created.

 

SQL> insert into bill values(303,'tuesday',122,4200);

 

1 row created.

 

SQL> insert into bill values(304,'monday',176,2210);

 

1 row created.

 

SQL> select * from bill;

 

       BNO DAY              TBNO      TOTAL

---------- ---------- ---------- ----------

       301 monday            109       1120

       302 sunday            123       9120

       303 tuesday           122       4200

       304 monday            176       2210

 

SQL> create table menu(dno int primary key not null,ddes varchar(10), price int check(price>0),bno int references bill);

 

Table created.

 

SQL> desc menu;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 DNO                                       NOT NULL NUMBER(38)

 DDES                                               VARCHAR2(10)

 PRICE                                              NUMBER(38)

 BNO                                                NUMBER(38)

 

SQL> insert into menu values(101,'veg',200,301);

 

1 row created.

 

SQL> insert into menu values(102,'non-veg',300,303);

 

1 row created.

 

SQL> insert into menu values(103,'non-veg',400,301);

 

1 row created.

 

SQL> insert into menu values(104,'veg',250,301);

 

1 row created.

 

SQL> insert into menu values(105,'non-veg',800,302);

 

1 row created.

 

SQL> insert into menu values(106,'veg',600,304);    

 

1 row created.

 

SQL> select * from menu;

 

       DNO DDES            PRICE        BNO

---------- ---------- ---------- ----------

       101 veg               200        301

       102 non-veg           300        303

       103 non-veg           400        301

       104 veg               250        301

       105 non-veg           800        302

       106 veg               600        304

6 rows selected.

 

SQL> create table bm(bmno int primary key,ddate varchar(10),bno int references bill,mno int references menu);

 

Table created.

 

SQL> desc bm;

 Name                                      Null?    Type

 ----------------------------------------- -------- ----------------------------

 BMNO                                      NOT NULL NUMBER(38)

 DDATE                                              VARCHAR2(10)

 BNO                                                NUMBER(38)

 MNO                                                NUMBER(38)

 

SQL> insert into bm values(1,'12/02/10',301,102);

 

1 row created.

 

SQL> insert into bm values(2,'09/07/19',303,104);

 

1 row created.

 

SQL> insert into bm values(3,'02/06/11',302,101);

 

1 row created.

 

SQL> insert into bm values(4,'12/02/09',304,102);

 

1 row created.

 

SQL> select * from bm;

 

      BMNO DDATE             BNO        MNO

---------- ---------- ---------- ----------

         1 12/02/10          301        102

         2 09/07/19          303        104

         3 02/06/11          302        101

         4 12/02/09          304        102

Consider the above tables and execute the following queries:

1.   Display the tableno whose dish_desc is “Veg”.

 

SQL> select tno from menu,bill,bm

  2  where bill.bno=bm.bno

  3  and menu.mno=bm.mno

  4  and dis='veg';

 

       TNO

----------

       123

       122

 

2.   Display the special menu of Monday.

SQL> select dis from bill,menu,bm

  2  where bill.bno=bm.bno

  3  and menu.mno=bm.mno

  4  and day='monday';

 

DIS

----------

non-veg

non-veg