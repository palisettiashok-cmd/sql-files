-- Create Database
CREATE DATABASE MedicalDB;

-- Use Database
USE MedicalDB;

-- Create Pharmacy Table
CREATE TABLE Pharmacy (
    TabletID INT PRIMARY KEY,
    TabletName VARCHAR(50),
    Weight VARCHAR(20),
    Disease VARCHAR(100),
    Symptoms VARCHAR(100)
);

-- Insert 10 Rows
INSERT INTO Pharmacy (TabletID, TabletName, Weight, Disease, Symptoms) VALUES
(1, 'Paracetamol', '500mg', 'Fever', 'High Fever'),
(2, 'Crocin', '650mg', 'Fever', 'High Fever'),
(3, 'Azithromycin', '500mg', 'Bacterial Infection', 'Sore Throat'),
(4, 'Cetirizine', '10mg', 'Allergy', 'Sneezing'),
(5, 'Metformin', '500mg', 'Diabetes', 'High Blood Sugar'),
(6, 'Omeprazole', '20mg', 'Acidity', 'Heartburn'),
(7, 'Amoxicillin', '250mg', 'Bacterial Infection', 'Cough'),
(8, 'Ibuprofen', '400mg', 'Pain', 'Body Pain'),
(9, 'Dolo 650', '650mg', 'Fever', 'High Fever'),
(10, 'ORS', '21g', 'Dehydration', 'Loose Motions');

-- Display Table
SELECT * FROM Pharmacy;

-- Rename Disease and Symptoms Columns
ALTER TABLE Pharmacy
RENAME COLUMN Disease TO DiseaseName;

ALTER TABLE Pharmacy
RENAME COLUMN Symptoms TO SymptomName;

-- Display Tablet ID and Tablet Name for the Same Symptom
SELECT TabletID, TabletName
FROM Pharmacy
WHERE SymptomName = 'High Fever';

-- Update Tablet Name
UPDATE Pharmacy
SET TabletName = 'Dolo 650 Plus'
WHERE TabletID = 9;

-- Display Updated Record
SELECT * FROM Pharmacy
WHERE TabletID = 9;

-- Truncate Table
TRUNCATE TABLE Pharmacy;

-- Drop Table
DROP TABLE Pharmacy;