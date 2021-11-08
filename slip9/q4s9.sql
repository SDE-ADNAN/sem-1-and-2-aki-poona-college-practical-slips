Q4. Consider the above tables and execute the following queries: [25 Marks]

1.   Display area wise property details.

SQL> select area,des from property

  2  order by area;

 

AREA                 DES

-------------------- --------------------

Pune                 tr

mumbai               vsdr

nashik               vegr

nashik               hjjr

pune                 vbh

 

2.   Display property owned by 'Mr.Patil' having minimum rate.

SQL> select min(rate) from property,owner

  2  where property.pno=owner.pno

  3  and name='Mr.Patil';

 

 MIN(RATE)

----------

    100000

 

3.   Delete all properties from “pune” owned by “Mr. Joshi”.

SQL> delete from owner

  2  where addr='Pune' and name='Mr.Joshi';

 

1 row deleted.

 

SQL> select * from owner;

 

NAME                 ADDR                       PHNO        PNO

-------------------- -------------------- ---------- ----------

Mr.Mane              Mumbai               1762386534      101

 

Mr.Patil             Mumbai               1762386534        102

Mr.Bhagat            Pune                 6876783865        101

Mr.Abhay             Pune                 6753386534        104

 

4. Update the phone Number of “Mr. Joshi” to 9922112233 who is having property at “Uruli Kanchan”

 

SQL> update owner set phno=9922112233

  2  where addr='Urali Kanchan';

 

1 row updated.

 

SQL> select * from owner;

 

NAME                 ADDR                       PHNO        PNO

-------------------- -------------------- ---------- ----------

Mr.Mane              Mumbai               1762386534        101

Mr.Patil             Mumbai               1762386534        102

Mr.Bhagat            Pune                 6876783865        101

Mr.Abhay             Pune                 6753386534        104

Mr.Sam               Urali Kanchan        9922112233        104

 

 5.Delete column address from Owner table.

Alter table owner

drop column addr;