CREATE TABLE Dim_Patient (
    Patient_ID INT AUTO_INCREMENT PRIMARY KEY,
    Patient_Name VARCHAR(255),
    Age INT,
    Gender VARCHAR(10),
    Blood_Type VARCHAR(5),
    -- We use a UNIQUE KEY to prevent creating duplicate patients
    -- This is our "business key" for joining
    UNIQUE KEY uk_patient (Patient_Name, Age, Gender) 
);

CREATE TABLE Dim_Doctor (
    Doctor_ID INT AUTO_INCREMENT PRIMARY KEY,
    Doctor_Name VARCHAR(100),
    UNIQUE KEY uk_doctor (Doctor_Name)
);

CREATE TABLE Dim_Hospital (
    Hospital_ID INT AUTO_INCREMENT PRIMARY KEY,
    Hospital_Name VARCHAR(100),
    UNIQUE KEY uk_hospital (Hospital_Name)
);

CREATE TABLE Dim_Medication (
    Medication_ID INT AUTO_INCREMENT PRIMARY KEY,
    Medication_Name VARCHAR(100),
    UNIQUE KEY uk_medication (Medication_Name)
);
