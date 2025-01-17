#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "usr/pwd@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<EOF
DROP VIEW PatientAlphabeticallyLastName;
DROP VIEW DentistSpecialAlphabet;
DROP VIEW BillAmountDueAsc;
exit;
EOF
