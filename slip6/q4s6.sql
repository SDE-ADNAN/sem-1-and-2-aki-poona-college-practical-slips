Q4. Consider the above tables and execute the following queries: [25 Marks]

1.   Display the names of project and department who are worked on projects whose status is ‘Completed’

SQL>

SQL> Select pname,dname,hod,loc from department,project

  2  where department.pno= project.pno

  3  and project.status='c';

 

PNAME                DNAME                HOD

-------------------- -------------------- --------------------

LOC

--------------------

abc                  computer             desai

pune

 

vb                   engineering          sam

pune

 

2.   Display total budget of each department.

SQL> Select sum(budget),dname from department,project

  2  where department.pno=project.pno

  3  group by dname;

 

SUM(BUDGET) DNAME

----------- --------------------

     200000 commerce

     600000 engineering

    3500000 computer

 

3.   Display incomplete project of each department.

SQL> select pname,status ,count(department.dno) from department,project

  2  where department.pno=project.pno

  3  and project.status='i'

  4  group by status,pname;

 

PNAME                STATUS               COUNT(DEPARTMENT.DNO)

-------------------- -------------------- ---------------------

xyz                  i                                        1

 

4.   Display all project working under 'Mr.Desai'.

 

SQL> Select pname from department,project

  2  where department.pno=project.pno

  3  and hod= 'desai';

 

PNAME

--------------------

Abc

 

5.Display department wise HOD.

 

SQL> select dname,hod  from department,project

  2  where department.pno=project.pno

  3  order by dname;

 

DNAME                HOD

-------------------- --------------------

commerce             mane

computer             kadam

computer             desai

engineering          sam