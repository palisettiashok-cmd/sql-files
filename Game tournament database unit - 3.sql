-- ============================================================
-- GAME TOURNAMENT DATABASE
-- ============================================================

CREATE DATABASE GameTournament;
USE GameTournament;


-- ============================================================
-- 1. PLAYERS TABLE
-- ============================================================

CREATE TABLE Players (
    Player_ID INT PRIMARY KEY,
    Player_Name VARCHAR(50) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Country VARCHAR(30),
    Email VARCHAR(100)
);

INSERT INTO Players VALUES
(1,'Arjun Reddy',21,'Male','India','arjun@gmail.com'),
(2,'Rahul Kumar',22,'Male','India','rahul@gmail.com'),
(3,'Sneha Rao',20,'Female','India','sneha@gmail.com'),
(4,'Priya Sharma',21,'Female','India','priya@gmail.com'),
(5,'Vikram Singh',23,'Male','India','vikram@gmail.com'),
(6,'Kiran Kumar',22,'Male','India','kiran@gmail.com'),
(7,'Ananya Reddy',20,'Female','India','ananya@gmail.com'),
(8,'Rohit Verma',24,'Male','India','rohit@gmail.com'),
(9,'Neha Patel',21,'Female','India','neha@gmail.com'),
(10,'Aditya Rao',23,'Male','India','aditya@gmail.com'),
(11,'Sai Krishna',22,'Male','India','saikrishna@gmail.com'),
(12,'Divya Nair',20,'Female','India','divya@gmail.com'),
(13,'Manoj Kumar',25,'Male','India','manoj@gmail.com'),
(14,'Pooja Reddy',21,'Female','India','pooja@gmail.com'),
(15,'Harish Babu',23,'Male','India','harish@gmail.com'),
(16,'Kavya Sri',20,'Female','India','kavya@gmail.com'),
(17,'Sandeep Rao',24,'Male','India','sandeep@gmail.com'),
(18,'Lakshmi Devi',22,'Female','India','lakshmi@gmail.com'),
(19,'Varun Teja',23,'Male','India','varun@gmail.com'),
(20,'Meghana Reddy',21,'Female','India','meghana@gmail.com'),
(21,'Nikhil Sharma',22,'Male','India','nikhil@gmail.com'),
(22,'Swathi Rao',20,'Female','India','swathi@gmail.com'),
(23,'Abhishek Singh',24,'Male','India','abhishek@gmail.com'),
(24,'Keerthi Kumar',21,'Female','India','keerthi@gmail.com'),
(25,'Tarun Reddy',23,'Male','India','tarun@gmail.com'),
(26,'Aishwarya Rao',22,'Female','India','aishwarya@gmail.com'),
(27,'Vamsi Krishna',24,'Male','India','vamsi@gmail.com'),
(28,'Nandini Sharma',20,'Female','India','nandini@gmail.com'),
(29,'Surya Prakash',23,'Male','India','surya@gmail.com'),
(30,'Bhavana Devi',21,'Female','India','bhavana@gmail.com');


-- ============================================================
-- 2. GAMES TABLE
-- ============================================================

CREATE TABLE Games (
    Game_ID INT PRIMARY KEY,
    Game_Name VARCHAR(50) NOT NULL,
    Game_Type VARCHAR(30),
    Platform VARCHAR(30)
);

INSERT INTO Games VALUES
(1,'Valorant','FPS','PC'),
(2,'PUBG','Battle Royale','PC'),
(3,'Free Fire','Battle Royale','Mobile'),
(4,'FIFA 24','Sports','PC'),
(5,'Minecraft','Survival','PC'),
(6,'Call of Duty','FPS','Mobile'),
(7,'Tekken 8','Fighting','Console'),
(8,'Fortnite','Battle Royale','PC'),
(9,'Rocket League','Sports','PC'),
(10,'League of Legends','MOBA','PC');


-- ============================================================
-- 3. TOURNAMENTS TABLE
-- ============================================================

CREATE TABLE Tournaments (
    Tournament_ID INT PRIMARY KEY,
    Tournament_Name VARCHAR(100),
    Game_ID INT,
    Start_Date DATE,
    End_Date DATE,
    Prize_Pool DECIMAL(10,2),
    FOREIGN KEY (Game_ID) REFERENCES Games(Game_ID)
);

INSERT INTO Tournaments VALUES
(1,'Valorant Championship 2026',1,'2026-01-10','2026-01-15',50000),
(2,'PUBG Masters 2026',2,'2026-02-05','2026-02-10',75000),
(3,'Free Fire Battle Cup',3,'2026-03-01','2026-03-05',30000),
(4,'FIFA Champions League',4,'2026-03-15','2026-03-20',40000),
(5,'Minecraft Builders Cup',5,'2026-04-01','2026-04-05',25000),
(6,'COD Mobile Championship',6,'2026-04-10','2026-04-15',45000),
(7,'Tekken Fighters Cup',7,'2026-05-01','2026-05-03',35000),
(8,'Fortnite World Cup',8,'2026-05-10','2026-05-15',80000),
(9,'Rocket League Masters',9,'2026-06-01','2026-06-05',30000),
(10,'League Legends Cup',10,'2026-06-10','2026-06-15',60000);


-- ============================================================
-- 4. REGISTRATIONS TABLE
-- ============================================================

CREATE TABLE Registrations (
    Registration_ID INT PRIMARY KEY,
    Player_ID INT,
    Tournament_ID INT,
    Registration_Date DATE,
    FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID),
    FOREIGN KEY (Tournament_ID) REFERENCES Tournaments(Tournament_ID)
);

INSERT INTO Registrations VALUES
(1,1,1,'2026-01-02'),
(2,2,1,'2026-01-02'),
(3,3,1,'2026-01-03'),
(4,4,2,'2026-01-20'),
(5,5,2,'2026-01-21'),
(6,6,2,'2026-01-22'),
(7,7,3,'2026-02-15'),
(8,8,3,'2026-02-16'),
(9,9,3,'2026-02-17'),
(10,10,4,'2026-03-01'),
(11,11,4,'2026-03-02'),
(12,12,4,'2026-03-03'),
(13,13,5,'2026-03-15'),
(14,14,5,'2026-03-16'),
(15,15,5,'2026-03-17'),
(16,16,6,'2026-03-25'),
(17,17,6,'2026-03-26'),
(18,18,6,'2026-03-27'),
(19,19,7,'2026-04-15'),
(20,20,7,'2026-04-16'),
(21,21,7,'2026-04-17'),
(22,22,8,'2026-04-25'),
(23,23,8,'2026-04-26'),
(24,24,8,'2026-04-27'),
(25,25,9,'2026-05-15'),
(26,26,9,'2026-05-16'),
(27,27,9,'2026-05-17'),
(28,28,10,'2026-05-25'),
(29,29,10,'2026-05-26'),
(30,30,10,'2026-05-27');


-- ============================================================
-- 5. MATCHES TABLE
-- ============================================================

CREATE TABLE Matches (
    Match_ID INT PRIMARY KEY,
    Tournament_ID INT,
    Player1_ID INT,
    Player2_ID INT,
    Match_Date DATE,
    Winner_ID INT,
    Score VARCHAR(20),
    FOREIGN KEY (Tournament_ID) REFERENCES Tournaments(Tournament_ID),
    FOREIGN KEY (Player1_ID) REFERENCES Players(Player_ID),
    FOREIGN KEY (Player2_ID) REFERENCES Players(Player_ID),
    FOREIGN KEY (Winner_ID) REFERENCES Players(Player_ID)
);

INSERT INTO Matches VALUES
(1,1,1,2,'2026-01-10',1,'13-10'),
(2,1,3,1,'2026-01-11',3,'13-8'),
(3,2,4,5,'2026-02-05',5,'12-10'),
(4,2,6,5,'2026-02-06',6,'15-12'),
(5,3,7,8,'2026-03-01',7,'10-8'),
(6,3,9,7,'2026-03-02',9,'12-10'),
(7,4,10,11,'2026-03-15',10,'4-2'),
(8,4,12,10,'2026-03-16',12,'3-1'),
(9,5,13,14,'2026-04-01',13,'5-2'),
(10,5,15,13,'2026-04-02',15,'4-3'),
(11,6,16,17,'2026-04-10',17,'20-18'),
(12,6,18,17,'2026-04-11',18,'21-19'),
(13,7,19,20,'2026-05-01',19,'3-1'),
(14,7,21,19,'2026-05-02',21,'3-2'),
(15,8,22,23,'2026-05-10',22,'5-3'),
(16,8,24,22,'2026-05-11',24,'4-2'),
(17,9,25,26,'2026-06-01',25,'6-4'),
(18,9,27,25,'2026-06-02',27,'5-3'),
(19,10,28,29,'2026-06-10',29,'2-1'),
(20,10,30,29,'2026-06-11',30,'3-2');


-- ============================================================
-- 6. RESULTS TABLE
-- ============================================================

CREATE TABLE Results (
    Result_ID INT PRIMARY KEY,
    Tournament_ID INT,
    Player_ID INT,
    Position INT,
    Prize_Won DECIMAL(10,2),
    FOREIGN KEY (Tournament_ID) REFERENCES Tournaments(Tournament_ID),
    FOREIGN KEY (Player_ID) REFERENCES Players(Player_ID)
);

INSERT INTO Results VALUES
(1,1,1,1,25000),
(2,1,3,2,15000),
(3,1,2,3,10000),
(4,2,5,1,37500),
(5,2,6,2,22500),
(6,2,4,3,15000),
(7,3,7,1,15000),
(8,3,9,2,9000),
(9,3,8,3,6000),
(10,4,10,1,20000),
(11,4,12,2,12000),
(12,4,11,3,8000),
(13,5,13,1,12500),
(14,5,15,2,7500),
(15,5,14,3,5000),
(16,6,17,1,22500),
(17,6,18,2,13500),
(18,6,16,3,9000),
(19,7,19,1,17500),
(20,7,21,2,10500),
(21,7,20,3,7000),
(22,8,22,1,40000),
(23,8,24,2,24000),
(24,8,23,3,16000),
(25,9,25,1,15000),
(26,9,27,2,9000),
(27,9,26,3,6000),
(28,10,30,1,30000),
(29,10,29,2,18000),
(30,10,28,3,12000);


-- ============================================================
-- 7. BASIC SELECT OPERATIONS
-- ============================================================

-- Display all players
SELECT * FROM Players;

-- Display all games
SELECT * FROM Games;

-- Display all tournaments
SELECT * FROM Tournaments;

-- Display all registrations
SELECT * FROM Registrations;

-- Display all matches
SELECT * FROM Matches;

-- Display all results
SELECT * FROM Results;


-- ============================================================
-- 8. WHERE CLAUSE
-- ============================================================

-- Players above 22 years
SELECT *
FROM Players
WHERE Age > 22;

-- Female players
SELECT *
FROM Players
WHERE Gender = 'Female';

-- Players from India
SELECT Player_Name, Country
FROM Players
WHERE Country = 'India';

-- Tournaments with prize pool greater than 40000
SELECT Tournament_Name, Prize_Pool
FROM Tournaments
WHERE Prize_Pool > 40000;


-- ============================================================
-- 9. ORDER BY
-- ============================================================

-- Players by age ascending
SELECT Player_Name, Age
FROM Players
ORDER BY Age ASC;

-- Players by age descending
SELECT Player_Name, Age
FROM Players
ORDER BY Age DESC;

-- Tournaments by prize pool
SELECT Tournament_Name, Prize_Pool
FROM Tournaments
ORDER BY Prize_Pool DESC;


-- ============================================================
-- 10. AGGREGATE FUNCTIONS
-- ============================================================

-- Total players
SELECT COUNT(*) AS Total_Players
FROM Players;

-- Average age
SELECT AVG(Age) AS Average_Age
FROM Players;

-- Maximum age
SELECT MAX(Age) AS Maximum_Age
FROM Players;

-- Minimum age
SELECT MIN(Age) AS Minimum_Age
FROM Players;

-- Total prize money
SELECT SUM(Prize_Pool) AS Total_Prize_Money
FROM Tournaments;

-- Average prize pool
SELECT AVG(Prize_Pool) AS Average_Prize_Pool
FROM Tournaments;

-- Highest prize won
SELECT MAX(Prize_Won) AS Highest_Prize
FROM Results;


-- ============================================================
-- 11. GROUP BY
-- ============================================================

-- Count players by gender
SELECT Gender, COUNT(*) AS Total_Players
FROM Players
GROUP BY Gender;

-- Count registrations for each tournament
SELECT
    Tournament_ID,
    COUNT(Player_ID) AS Number_Of_Players
FROM Registrations
GROUP BY Tournament_ID;


-- ============================================================
-- 12. HAVING
-- ============================================================

SELECT
    Tournament_ID,
    COUNT(Player_ID) AS Number_Of_Players
FROM Registrations
GROUP BY Tournament_ID
HAVING COUNT(Player_ID) >= 2;


-- ============================================================
-- 13. INNER JOIN
-- ============================================================

-- Tournament and game details
SELECT
    T.Tournament_Name,
    G.Game_Name,
    G.Game_Type,
    T.Prize_Pool
FROM Tournaments T
INNER JOIN Games G
ON T.Game_ID = G.Game_ID;


-- ============================================================
-- 14. MULTIPLE TABLE JOIN
-- ============================================================

-- Player registration details
SELECT
    P.Player_Name,
    T.Tournament_Name,
    R.Registration_Date
FROM Registrations R
INNER JOIN Players P
ON R.Player_ID = P.Player_ID
INNER JOIN Tournaments T
ON R.Tournament_ID = T.Tournament_ID;


-- ============================================================
-- 15. MATCH DETAILS USING JOIN
-- ============================================================

SELECT
    M.Match_ID,
    P1.Player_Name AS Player1,
    P2.Player_Name AS Player2,
    W.Player_Name AS Winner,
    M.Score
FROM Matches M
INNER JOIN Players P1
ON M.Player1_ID = P1.Player_ID
INNER JOIN Players P2
ON M.Player2_ID = P2.Player_ID
INNER JOIN Players W
ON M.Winner_ID = W.Player_ID;


-- ============================================================
-- 16. RESULT DETAILS USING JOIN
-- ============================================================

SELECT
    T.Tournament_Name,
    P.Player_Name,
    R.Position,
    R.Prize_Won
FROM Results R
INNER JOIN Players P
ON R.Player_ID = P.Player_ID
INNER JOIN Tournaments T
ON R.Tournament_ID = T.Tournament_ID
ORDER BY T.Tournament_ID, R.Position;


-- ============================================================
-- 17. FIRST POSITION PLAYERS
-- ============================================================

SELECT
    P.Player_Name,
    T.Tournament_Name,
    R.Prize_Won
FROM Results R
INNER JOIN Players P
ON R.Player_ID = P.Player_ID
INNER JOIN Tournaments T
ON R.Tournament_ID = T.Tournament_ID
WHERE R.Position = 1;


-- ============================================================
-- 18. SUBQUERY
-- ============================================================

-- Players older than average age
SELECT Player_Name, Age
FROM Players
WHERE Age > (
    SELECT AVG(Age)
    FROM Players
);


-- Players who won more than 20000
SELECT Player_Name
FROM Players
WHERE Player_ID IN (
    SELECT Player_ID
    FROM Results
    WHERE Prize_Won > 20000
);


-- ============================================================
-- 19. UPDATE OPERATION
-- ============================================================

UPDATE Players
SET Age = 22
WHERE Player_ID = 1;

SELECT *
FROM Players
WHERE Player_ID = 1;


-- Increase prize pool of Tournament 1
UPDATE Tournaments
SET Prize_Pool = Prize_Pool + 5000
WHERE Tournament_ID = 1;

SELECT *
FROM Tournaments
WHERE Tournament_ID = 1;


-- ============================================================
-- 20. DELETE OPERATION
-- ============================================================

DELETE FROM Registrations
WHERE Registration_ID = 30;

SELECT *
FROM Registrations;


-- ============================================================
-- 21. VIEW
-- ============================================================

CREATE VIEW Player_Results AS
SELECT
    P.Player_Name,
    T.Tournament_Name,
    R.Position,
    R.Prize_Won
FROM Results R
INNER JOIN Players P
ON R.Player_ID = P.Player_ID
INNER JOIN Tournaments T
ON R.Tournament_ID = T.Tournament_ID;

-- Display view
SELECT * FROM Player_Results;


-- ============================================================
-- 22. TRANSACTION - COMMIT
-- ============================================================

START TRANSACTION;

UPDATE Players
SET Age = Age + 1
WHERE Player_ID = 2;

COMMIT;


-- ============================================================
-- 23. TRANSACTION - ROLLBACK
-- ============================================================

START TRANSACTION;

UPDATE Players
SET Age = Age + 1
WHERE Player_ID = 3;

ROLLBACK;


-- ============================================================
-- END OF GAME TOURNAMENT DATABASE
-- ============================================================