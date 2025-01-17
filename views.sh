#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "n12chan/01208247@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<EOF
CREATE VIEW PatientAlphabeticallyLastName AS
SELECT DISTINCT PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory, Address
FROM Patient
ORDER BY LastName, FirstName;

CREATE VIEW DentistSpecialAlphabet AS
SELECT Specialization, COUNT(DISTINCT DentistID) AS NumberOfDentists
FROM Dentist
GROUP BY Specialization
ORDER BY Specialization;

CREATE VIEW BillAmountDueAsc AS
SELECT BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate
FROM Bill
ORDER BY AmountDue DESC, AmountPaid ASC;
exit;
EOF
