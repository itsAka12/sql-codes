SELECT * FROM Department2053;

SELECT * FROM Student2053 WHERE DEPTCODE='CSE';

SELECT * FROM Department2053 WHERE StudentAllotted>=100;

SELECT Name,DeptCode,Semester FROM Student2053 WHERE YearOfAdm=2018;


SELECT Name,Semester FROM Student2053 WHERE DeptCode='CSE' AND PhoneNo is NULL;

SELECT Name,PhoneNo FROM Student2053 WHERE Name LIKE 'R%';

SELECT Name,PhoneNo FROM Student2053 WHERE Name LIKE '% KUMAR';

SELECT Name,YearOfAdm,DeptCode FROM Student2053 WHERE Name LIKE '_A%';

SELECT * FROM Student2053 WHERE DeptCode='CSE' AND Address LIKE'%Kolkata%' AND BithDate<'01-01-2000';

SELECT * FROM Student2053 WHERE Semester='SEM3' AND TO_CHAR(BithDate,'DD')='01';

SELECT * FROM Student2053 WHERE DeptCode='IT' AND Address LIKE'%Kolkata%' AND YearOfAdm=2017;

SELECT PhoneNo,YearOfAdm,BithDate FROM Student2053 WHERE DeptCode='CSE' AND TO_CHAR(BithDate,'MM')='06';


SELECT * FROM Student2053 WHERE DeptCode='ECE' AND TO_CHAR(BithDate,'MM')='10' AND TO_CHAR(BithDate,'DD')='20' AND Semester='SEM5';


SELECT Name,DeptCode,Semester FROM Student2053 WHERE (SYSDATE-BithDate)/365>20;





