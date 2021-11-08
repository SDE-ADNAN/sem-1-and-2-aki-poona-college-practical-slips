-- not known


Q3. Consider the following entities and their relationships. Create a RDB in 3 NF with
appropriate data types and Constraints. [20 Marks] Item (item_no, item_name, quantity)
Suppliers (sup_no, sup_name, address, city, phone_no)
Relation between Item and Supplier is Many to Many with rate
and discount as descriptive attribute.
Constraint: Primary key, phone_no must be 10 digits.
Consider the above tables and execute the following queries:
1. Display item wise quantity.
2. Display Suppliers whose names are starting with „s‟ character.



-- =============================================================================================
Item000(item_no, item_name, quantity)
Suppliers000(sup_no, sup_name, address, city, phone_no)

SQL>create table item000(it_no number(3)primary key,it_name varchar(15),
quantity number(3));

Table Created.

SQL> select * from item000;

 IT_NO           IT_NAME           QUANTITY
------------       --------------------      -------------------
         1             Washing Machine         10
         2             Refrigerator                   15
         3             TV                                 25
         4             Laptop                             5
         5             Tablet                            51
         6             AC                                  5
         7             Fan                                65
         8             Radio                          100
         9             Car                                10
        10            Bike                               15
        11            DVD                               1

SQL>create table suppliers000(sup_no number(5)primary key,sup_name varchar(15),address varchar(15),city varchar(15),ph_no number(15));

Table Created.

SQL> select * from suppliers000;

 SUP_NO       SUP_NAME        ADDRESS                CITY           PH_NO
-------------     --------------------     --------------------   ---------------   ---------------------
       101           Mr.Tambe                    Supe                Baramati          9922999945
       102           Mr.Pavan                     Asu                  Phaltan            8975495097
       103           Mr.Yogesh                  Pandare           Baramati          9730623868
       104           Mr.Garud                                Pandare           Baramati          8605070848
       105           Mr.Chavan                 Chavan-Vasti  Malegaon        9960320796
       107           Mr.Jadhav                  Baramati          Baramati          9970565402
       108           Mr.Gorde                                Pune                Pune                8554831382
       109           Mr.Phalke                   Asu                  Phaltan            9960456578
       110           Mr.Jagdale                 Patas                Baramati          9923074242


SQL>create table item_sup000(it_no number(5),sup_no number(5),rate number(5),
discount number(5),constraints fk2it foreign key(it_no)references item000(it_no),
constraints fk2sp foreign key(sup_no)references suppliers000(sup_no));
Table Created.


SQL> select * from item_sup000;

   IT_NO     SUP_NO       RATE         DISCOUNT
-------------  --------------   --------------- -------------------
         1             101                  15000         20
         2             102                  20000         15
         1             103                  14000         25
         3             103                  12000          5
         4             104                  5600            3
         5             105                  25000         25
         6             103                  45000         45
         1             107                  16000         20

Create a Database in 3NF & write queries for following.
1)Delete items having quantity less than 2.
SQL> delete from item000
           where quantity<2;
1 row deleted.
SQL> select * from item000;
  IT_NO          IT_NAME           QUANTITY
-------------    ----------------------   ----------------
         1            Washing Machine        10
         2             Refrigerator                 15
         3             TV                              25
         4             Laptop                          5
         5             Tablet                         51
         6             AC                               5
         7             Fan                             65
         8             Radio                        100
         9             Car                             10
10                Bike                           15

2)Display total number of suppliers who are supplying ‘Refrigerator’.
  SQL>select count(sup_name)from item000,suppliers000,item_sup000
            where item000.it_no=item_sup000.it_no and suppliers000.sup_no=item_sup000.sup_no
            and it_name='Refrigerator'

COUNT(SUP_NAME)
-------------------------------
              1
3)Display all suppliers supplying ‘Washing Machine’ with minimum cost.
SQL>select sup_name,min(rate) from item000,suppliers000,item_sup000
where item000.it_no=item_sup000.it_no and suppliers000.sup_no=item_sup000.sup_no  and it_name='Washing Machine'group by sup_name;

SUP_NAME         MIN(RATE)
-----------------------------------------
Mr.Jadhav            16000
Mr.Tambe             15000
Mr.Yogesh            14000

4)Give supplier details who give maximum discount on each item.
SQL>select sup_name,address,city,ph_no,it_name,max(discount)from item000,suppliers000,item_sup000 where item000.it_no=item_sup000.it_no
            and suppliers000.sup_no=item_sup000.sup_no
group by sup_name,address,city,ph_no,it_name;

SUP_NAME    ADDRESS    CITY        PH_NO                 IT_NAME    MAX(DISCOUNT)
------------------  ---------------  -------------  ------------------   -----------------   -------------------
Mr.Chavan       Chavan-Vasti Malegaon     9960320796       Tablet                          25
Mr.Garud         Pandare           Baramati      8605070848       Laptop                                      3
Mr.Jadhav                   Baramati           Baramati       9970565402      Washing Machine       20
Mr.Pavan        Asu                   Phaltan           8975495097    Refrigerator                 15
Mr.Tambe        Supe                Baramati          9922999945    Washing Machine       20
Mr.Yogesh       Pandare         Baramati          9730623868     AC                             45
Mr.Yogesh       Pandare         Baramati          9730623868     TV                               5
Mr.Yogesh       Pandare         Baramati          9730623868      Washing Machine     25

5)List suppliers supplying maximum number of item.
SQL>select sup_name,max(it_no) from item000,suppliers000,item_sup000
          where item000.it_no=item_sup000.it_no and
          suppliers000.sup_no=item_sup000.sup_no
          group by  sup_name;

SUP_NAME     MAX(IT_NO)
-----------------    -------------------
Mr.Yogesh                 3