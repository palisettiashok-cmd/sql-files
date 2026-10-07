CREATE DATABASE UniversityDB;
USE UniversityDB;

CREATE TABLE Departments (
    DeptID VARCHAR(5) PRIMARY KEY,
    Department VARCHAR(60)
);

INSERT INTO Departments VALUES
('D01','Computer Science'),
('D02','Electronics'),
('D03','Mechanical Engineering'),
('D04','Artificial Intelligence and Machine Learning');

-- =========================================
-- CREATE STUDENTS TABLE
-- =========================================

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Email VARCHAR(50),
    Department VARCHAR(60)
);

INSERT INTO Students VALUES
(101,'Rahul Sharma',20,'Male','rahul@univ.edu','Computer Science'),
(102,'Priya Reddy',19,'Female','priya@univ.edu','Computer Science'),
(103,'Arjun Kumar',21,'Male','arjun@univ.edu','Computer Science'),
(104,'Sneha Patel',20,'Female','sneha@univ.edu','Computer Science'),
(105,'Kiran Verma',22,'Male','kiran@univ.edu','Computer Science'),
(106,'Anjali Singh',20,'Female','anjali@univ.edu','Electronics'),
(107,'Rohit Das',21,'Male','rohit@univ.edu','Electronics'),
(108,'Meena Joshi',19,'Female','meena@univ.edu','Electronics'),
(109,'Vivek Rao',22,'Male','vivek@univ.edu','Electronics'),
(110,'Neha Gupta',20,'Female','neha@univ.edu','Electronics'),
(111,'Aditya Nair',21,'Male','aditya@univ.edu','Mechanical Engineering'),
(112,'Pooja Mishra',20,'Female','pooja@univ.edu','Mechanical Engineering'),
(113,'Akash Yadav',19,'Male','akash@univ.edu','Mechanical Engineering'),
(114,'Divya Iyer',22,'Female','divya@univ.edu','Mechanical Engineering'),
(115,'Mohit Jain',20,'Male','mohit@univ.edu','Mechanical Engineering'),
(116,'Harsha Reddy',21,'Male','harsha@univ.edu','Artificial Intelligence and Machine Learning'),
(117,'Keerthana S',20,'Female','keerthana@univ.edu','Artificial Intelligence and Machine Learning'),
(118,'Nikhil Varma',19,'Male','nikhil@univ.edu','Artificial Intelligence and Machine Learning'),
(119,'Ayesha Khan',21,'Female','ayesha@univ.edu','Artificial Intelligence and Machine Learning'),
(120,'Sai Teja',20,'Male','saiteja@univ.edu','Artificial Intelligence and Machine Learning');



SELECT * FROM Students;

SELECT * FROM Departments;

SELECT Name, Age FROM Students;

SELECT * FROM Students
WHERE Department='Computer Science';


ALTER TABLE Students MODIFY Age SMALLINT;

ALTER TABLE Students DROP COLUMN Email;

ALTER TABLE Students RENAME COLUMN Age TO StuAge;



UPDATE Students
SET Department='Artificial Intelligence and Machine Learning'
WHERE Student_ID=103;



DELETE FROM Students
WHERE Student_ID=105;


SELECT Name, StuAge
FROM Students
WHERE Department='Artificial Intelligence and Machine Learning';


SELECT S.Name, D.Department
FROM Students AS S
INNER JOIN Departments AS D
ON S.Department = D.Department;

SELECT
AVG(StuAge) AS Average_Age,
MAX(StuAge) AS Highest_Age,
MIN(StuAge) AS Lowest_Age,
SUM(StuAge) AS Total_Age
FROM Students;


SELECT Department, AVG(StuAge) AS Average_Age
FROM Students
GROUP BY Department;



SELECT Department, MAX(StuAge) AS Maximum_Age
FROM Students
GROUP BY Department
HAVING MAX(StuAge) > 20;



RENAME TABLE Students TO StudentDetails;

SELECT * FROM StudentDetails;


TRUNCATE TABLE StudentDetails;

SELECT * FROM StudentDetails;

DROP TABLE StudentDetails;

DROP TABLE Departments;


DROP DATABASE UniversityDB;