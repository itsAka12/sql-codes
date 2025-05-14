Column Name	Data Type	Size	Constraints
SubjectCode	Varchar2	6	Primary key
SubjectName	Varchar2	30	Not null
DeptCode	Varchar2	3	Foreign key Department(DeptCode)
Semester	Varchar2	4	Not Null

CREATE TABLE Subject2053(SubjectCode VARCHAR2(6) PRIMARY KEY,SubjectName VARCHAR2(30) NOT NULL,DeptCode VARCHAR2(3) REFERENCES Department2053(DeptCode),Semester VARCHAR2(4) NOT NULL);



CREATE TABLE Result2053(RollNo NUMBER(6) NOT NULL,Sub_code VARCHAR2(8) NOT NULL,Marks NUMBER(3) CHECK (Marks<=100),PassMarks NUMBER(2),PRIMARY KeY(RollNo,Sub_code),FOREIGN KEY(RollNo) REFERENCES Student2053(RollNo));


INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1001, 'CS501', 68,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1002, 'CS501', 76,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1003, 'CS501', 91,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1001, 'CS502', 38,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1002, 'CS502', 81,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1003, 'CS502', 82,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1023, 'CS301', 92,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1029, 'CS301', 83,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1500, 'CS301', 65,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1023, 'CS302', 75,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1029, 'CS302', 71,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (1500, 'CS302', 35,40);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (2001, 'ECS501', 67,30);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (2002, 'ECS501', 72,30);
INSERT INTO Result2053(RollNo, Sub_code, Marks, PassMarks) VALUES (2101, 'EC501', 77,40);




/*accesing and modifing data*/

i. Find the names of subjects for students of CSE 5th semester

SELECT * FROM Subject2042 WHERE DeptCode IN ('CSE') AND Semester IN ('SEM5');








ii. Find the roll numbers who got marks between 61 to 70 in CS501.

SELECT ROLLNO FROM Result2042 WHERE MARKS BETWEEN 61 AND 70  AND SUB_CODE='CS501';


iii. Change the address of the student whose roll number is given.

UPDATE Student2042 SET ADDRESS='BARANAGAR' WHERE ROLLNO=1001;
SELECT * FROM Student2042 WHERE ROLLNO=1001;


iv. Increase the total number of student allocation of IT to 75.

UPDATE Department2042 SET STUDENTALLOTTED=75 WHERE DeptCode='IT';
SELECT * FROM Department2042 WHERE DeptCode='IT';









v. Increase the total number of student allocation of CSE by 15.

UPDATE Department2042 SET STUDENTALLOTTED = STUDENTALLOTTED + 15 WHERE DeptCode ='CSE';
SELECT * FROM Department2042 WHERE DeptCode='CSE';







vi. Increase the marks of all students of subject CS302 by 5.

UPDATE Result2042 SET MARKS=MARKS + 5 WHERE SUB_CODE='CS302';
SELECT * FROM Result2042 WHERE SUB_CODE='CS302';







vii. Add a default phone number to all CSE 5th semester students who do not have phone number.

UPDATE Student2042 SET PHONENO=8910793249 WHERE  DeptCode='CSE' AND SEMESTER='SEM5' AND PHONENO IS NULL;
SELECT * FROM Student2042 WHERE PhoneNo=8910793249;


viii. Display the rows from RESULT where a student failed to obtain pass marks.

SELECT * FROM Result2042 WHERE MARKS < PASS_MARKS;








ix. Add 2 marks to the students who failed for maximum 2 marks to any the subjects with CS code.

UPDATE Result2042 SET MARKS=MARKS+2 WHERE MARKS < PASS_MARKS AND PASS_MARKS-MARKS <= 2 AND SUB_CODE LIKE 'CS%';
SELECT * FROM Result2042 WHERE ROLLNO=1001 AND SUB_CODE='CS502';









x. Delete the student with given roll number from student table.
SELECT * FROM Student2042 WHERE ROLLNO = 3005;
DELETE FROM Student2042 WHERE ROLLNO = 3005;


xi. Display the students name, deptcode, semester who admitted before 2017 in alphabetical order of name.

SELECT NAME,DeptCode,SEMESTER FROM Student2042 WHERE YEAROFADM < 2017 ORDER BY NAME ASC;


xii. Display the roll number, subject code  who got more than 90 in either CS301 or CS302.

SELECT ROLLNO,SUB_CODE FROM Result2042 WHERE (SUB_CODE='CS301' OR SUB_CODE='CS302') AND MARKS > 90;


xiii. Insert two students in students table.

INSERT INTO Student2042 VALUES (1005,'RIYA ROY','Saltlake',7911234666,2017,'CSE','SEM5',TO_DATE('20-11-2002','DD-MM-YYYY'));

INSERT INTO Student2042 VALUES (2005,'DIYA DUTTA','KOLKATA',7918765466,2018,'CSE','SEM5',TO_DATE('04-04-2002','DD-MM-YYYY'));


xiv. Delete phone number of a given student.

UPDATE Student2042 SET PHONENO = NULL WHERE NAME='RIYA ROY';








xv. Display the roll number, subject code  who got more than 40 form pass marks in either CS501 or CS502.

SELECT ROLLNO,SUB_CODE,MARKS FROM Result2042 WHERE MARKS > (PASS_MARKS+40) AND (SUB_CODE='CS501' OR SUB_CODE='CS502');

