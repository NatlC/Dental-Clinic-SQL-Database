#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "n12chan/01208247@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<EOF

SELECT p.FirstName AS PatientFirstName, p.LastName AS PatientLastName, d.FirstName AS DentistFirstName, d.LastName AS DentistLastName                                                           FROM Patient p
JOIN Appointment a ON p.PatientID = a.PatientID
JOIN Dentist d ON a.DentistID = d.DentistID;

exit;
EOF
