-- Q4. Consider the above tables and execute the following queries: [20 Marks]
-- 1. Display the count of patient room wise.
-- 2. Display the names of patients who are admitted in room no 101.
-- 3. Display the disease of patient whose bed_No is 1.
-- 4. Display the room_no and bed_no of patient whose name is “Mr Roy”.
-- 5. Give the details of Patient who is admitted on 2
-- nd flr in roomno 102.


Q4. Consider the above tables and execute the following queries: [25 Marks]

1.   Display the count of patient room wise.

 

SQL> select count(patient.pcode) from patient,bed

  2  where patient.pcode=bed.pcode

  3  group by rno;

 

COUNT(PATIENT.PCODE)

--------------------

                   1

                   2

                   1

                   1

                   1

2.   Display the names of patients who are admitted in room no 101.

SQL> select name from patient,bed

  2  where patient.pcode=bed.pcode

  3  and rno=102;

 

NAME

--------------------

Abhay

 

3.   Display the disease of patient whose bed_No is 1

SQL> select disease from patient,bed

  2  where patient.pcode=bed.pcode

  3  and bno=1;

 

DISEASE

----------

Listeria

 

4.   Display the room_no and bed_no of patient whose name is “Mr Roy”

SQL> select rno,bno from patient,bed

  2  where patient.pcode=bed.pcode

  3  and name='Mr.Roy';

 

       RNO        BNO

---------- ----------

       103          3

5.   Give the details of Patient who is admitted on 2nd flr in roomno 102.

 

SQL> select * from patient,bed

  2  where patient.pcode=bed.pcode

  3  and loc='2nd floor' and rno=102;

 

     PCODE NAME                 ADDR                 DISEASE           BNO

---------- -------------------- -------------------- ---------- ----------

       RNO LOC             PCODE

---------- ---------- ----------

        12 Abhay                pune                 norovirus           2

       102 2nd floor          12

 