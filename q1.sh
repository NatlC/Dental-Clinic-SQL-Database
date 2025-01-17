#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "n12chan/01208247@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<EOF

SELECT FirstName, LastName, Phone, Email
FROM Patient p
WHERE EXISTS (
    SELECT AmountDue 
    FROM Bill b 
    WHERE b.PatientId = p.PatientId AND AmountDue > 0);

exit;
EOF
