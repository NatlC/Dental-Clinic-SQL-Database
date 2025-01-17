#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "usr/pwd@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<EOF
CREATE TABLE Dentist (
    DentistID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Phone VARCHAR(12) NOT NULL, -- Format ###-###-####
    Email VARCHAR(100) NOT NULL,
    Specialization VARCHAR(25)
);

CREATE TABLE AddressInfo (
    Address VARCHAR(255) PRIMARY KEY,
    Street VARCHAR(255),
    City VARCHAR(255),
    Province VARCHAR(2),
    PostalCode VARCHAR(6)
);

CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(100),
    DateOfBirth VARCHAR(10),
    MedicalHistory VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    FOREIGN KEY (Address) REFERENCES AddressInfo(Address)
);

CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DentistID INT,
    AppointmentTime VARCHAR(5), -- format #:##
    AppointmentDate VARCHAR(10),
    Status VARCHAR(9),
    Reason VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DentistID) REFERENCES Dentist(DentistID)
);

CREATE TABLE Treatment (
    TreatmentID INT PRIMARY KEY,
    AppointmentID INT,
    PatientID INT,
    DentistID INT, 
    Type VARCHAR(25),
    Cost DECIMAL(10, 2),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DentistID) REFERENCES Dentist(DentistID)
);

CREATE TABLE Bill (
    BillID INT PRIMARY KEY,
    PatientID INT,
    TreatmentID INT, 
    AmountPaid DECIMAL(10, 2),
    AmountDue DECIMAL(10, 2),
    PaidDate VARCHAR(10), 
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (TreatmentID) REFERENCES Treatment(TreatmentID)
);
exit;
EOF
