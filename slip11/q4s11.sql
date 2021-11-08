Q4. Consider the above tables and execute the following queries: [25 Marks]

1.   Display receipt which includes bill_no with Dish description, price, quantity and total amount of each menu.

 

SQL> select sum(bill.total),menu.dis,menu.price,bm.qunt from bill,menu,bm

  2  where bill.bno=bm.bno

  3  and menu.mno=bm.mno

  4  group by menu.dis,menu.price,bm.qunt;

 

SUM(TOTAL) DIS             PRICE       QUNT

--------------- ---------- ---------- ----------

           9120 veg               200        102

           4200 veg               250         23

           1120 non-veg           300        123

           2210 non-veg           300        312

 

2)Find total amount collected by hotel on date 09/07/2019.

SQL> select sum(total) from bill,menu,bm

  2  where bill.bno=bm.bno

  3  and menu.mno=bm.mno

  4  and ddate='09/07/19';

 

SUM(TOTAL)

----------

      4200

 

 3)Count number of menus of billno 301

SQL> select count(dis) from bill,menu,bm

  2  where bill.bno=bm.bno

  3  and menu.mno=bm.mno

  4  and bill.bno=301;

 

COUNT(DIS)

----------

         1

 4)Display menu details having price between 100 and 500.

 

SQL> select dis,price from menu

  2  where price between 100 and 500;

 

DIS             PRICE

---------- ----------

veg               200

non-veg           300

non-veg           400

veg               250

 

5. Display the tableno and day whose bill amount is zero.

 

SQL> select tno,day from bill

  2  where total=0;

 

no rows selected

