-- Q4. Consider the above tables and execute the following queries: [20 Marks]
-- 1. Display the names of the hospitals which are located at “Pimpri” city.
-- 2. Display the names of doctors who are working in “Birla” Hospital and
-- city name is “Chinchwad”.
-- 3. Display the specialty of the doctors who are working in “Ruby” hospital.
-- 4. Give the count of doctor‟s hospital wise which are located at “Pimple Gurav”.
-- 5. Update an address of Doctor to “Pimpri” whose hospital is “Ruby clinic”



1.   Display the names of the hospitals which are located at “Pimpri” city.

 

SQL> select hname from hospital,doctor

  2  where doctor.hno=hospital.hno

  3  and city='pimpri';

 

HNAME

--------------------

ruby

ruby

ruby

 

2.   Display the names of doctors who are working in “Birla” Hospital and city name is “Chinchwad”

SQL> select dname from doctor,hospital

  2  where doctor.hno=hospital.hno

  3  and hname='birla' and city='chinchwad';

 

DNAME

--------------------

dr.Raghav

 

3.   Display the specialty of the doctors who are working in “Ruby” hospital.

SQL> select speciality from hospital,doctor

  2  where doctor.hno=hospital.hno

  3  and hname='ruby';

 

SPECIALITY

--------------------

skin

internist

head

 

4.   Give the count of doctor’s hospital wise which are located at “Pimple Gurav”.

SQL> select hname,count(dno) from doctor,hospital

  2  where doctor.hno=hospital.hno

  3  and addr='kharadi road'

  4  group by hname;

 

HNAME                COUNT(DNO)

-------------------- ----------

ruby                          3

balaji                        1

 

5.   Update an address of Doctor to “Pimpri” whose hospital is “Ruby clinic”

SQL> update doctor set addr1='pimpri'

  2  where hno in(select hno from hospital where hname='ruby');

 

3 rows updated.