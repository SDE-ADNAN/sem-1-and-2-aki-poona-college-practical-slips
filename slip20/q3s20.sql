Wholesaler000(w_no, w_name, address, city)
Product000(product_no, product_name, rate)
SQL>create table wholesaler000(w_no number(4),w_name varchar(15),address varchar(15),city varchar(15),constraints pk2w primary key(w_no));

Table Created.

 SQL> select * from wholesaler000;

      W_NO   W_NAME     ADDRESS         CITY
      ----------  ---------------   ----------------   -------------
         1             Sanjay              Supe              Baramati
         2              Omkar              Baramati       Baramati
         3             Sharad              Bhigwan        Indapur
         4              Pramod             Sherewadi     Baramati
         5              Sanket              Pandare         Baramati
         6             Shubham          Phaltan          Solapur
         7              Pranil                Phaltan          Baramati
         8             Chetan              Malegoan       Pune
         9              Mr.Khabia        Pune               Pune
        10             mr.shah             Delhi              mumbai


SQL>create table product000(p_no int primary key,p_name varchar(15),rate number(3));

Table Created.

SQL> select * from product000;

  P_NO         P_NAME         RATE
----------        ---------------    ------------------------
       101           Moniter              2500
       102           CPU                 15000
       103           Mouse                  150
       104           keyboard             700
       105           DVD                  3000
       106           Mobile               5000
       107           laptop               40000
       108           headset                700
       109           tv                      40000
       110           printer                5000

SQL> create table w_prod000(w_no int,p_no int,quantity number(3),
           constraint fk2p foreign key(w_no)references wholesaler000(w_no),
           constraint fk2e foreign key(p_no) references product000(p_no));

Table Created.

select * from w_prod000;

 W_NO     P_NO   QUANTITY
-----------  ---------- ----------------
    1            101               50
    2            102             100
    3            103             150
    9            101             200
    4            104               60
    5            105               70
    6            106               80
    7            104               90
    8            104             100
10              104             120

Create a Database in 3NF & write queries for following.
1.Display total number of wholesaler of each product.
  SQL>select p_name,count(w_name) from wholesaler000,product000,w_prod000
            where wholesaler000.w_no=w_prod000.w_no and product000.p_no=w_prod000.p_no
            group by p_name

P_NAME          COUNT(W_NAME)
-------------         ----------------------------
CPU                                1
DVD                               1
Mobile                            1
Moniter                           4
Mouse                             1
keyboard                         4








2.Display total quantity of each product sold by ‘Mr. Khabia’.
 SQL>select p_name,sum(quantity)from wholesaler000,product000,w_prod000
           where wholesaler000.w_no=w_prod000.w_no and product000.p_no=w_prod000.p_no
           and w_name='Mr.Khabia'
           group by p_name

P_NAME          SUM(QUANTITY)
--------------- ----------------------------
Moniter                   200


3)Decrement rate of all products by 5% supplied by wholesaler from 'Pune ' city.
SQL>update wholesaler000,product000,w_prod000 SET
    where wholesaler000.w_no=w_prod000.w_no and product000.p_no=w_prod000.p_no
    and rate=rate-0.05 and city='pune'
3 rows updated
select * from wholesaler000;

 W_NO      W_NAME          ADDRESS    CITY
----------      ---------------     ------------------ ---------------
    1                  Sanjay                  Supe               Baramati
    2                  Omkar                  Baramati        Baramati
    3                  Sharad                 Bhigwan        Indapur
    4                  Pramod                Sherewadi      Baramati
    5                  Sanket                  Pandare          Baramati
    6                  Shubham              Phaltan          Solapur
    7                  Pranil                   Phaltan            Baramati
    8                  Chetan                 Malegoan        Pune
    9                  Mr.Khabia           Pune                Pune
   10                 mr.shah                Delhi               mumbai                  
   11                 mayur                 Kedgoan          Dund

 select * from product000;

  P_NO          P_NAME          RATE
---------         ---------------      ----------------
   101               Moniter                2500
   102               CPU                  15000
   103               Mouse                    150
   104               keyboard               700
   105               DVD                      300
   106               Mobile                 5000
   107               laptop                 36100
   108               headset                   665
   109               tv                        36100
   110               printer                  5000
   111               Moniter                2375


4)Display wholesaler from 'Pune' city and supplying 'Monitor'. 
  SQL>select  w_name from wholesaler000,product000,w_prod000
            where wholesaler000.w_no=w_prod000.w_no and product000.p_no=w_prod000.p_no
            and p_name='Moniter'and city='pune';

W_NO   W_NAME      ADDRESS     CITY
---------    ---------------   ---------------    -----------
11               Mayur         Kedgoan           Dund