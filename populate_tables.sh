#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "n12chan/01208247@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle12c.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl12c)))" <<EOF
INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (1, 'John', 'Smith', '555-123-4567', 'john.smith@example.com', 'Orthodontics');

INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (2, 'Barry', 'Allen', '555-987-6543', 'barry.allen@example.com', 'Endodontics');

INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (3, 'Jane', 'Doe', '555-456-7890', 'jane.doe@example.com', 'Periodontics');

INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (4, 'Ethan', 'Parker', '555-321-0987', 'ethan.parker@example.com', 'Prosthodontics');

INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (5, 'Mia', 'Roberts', '555-654-3210', 'mia.roberts@example.com', 'Pediatric Dentistry');

INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (6, 'Alexander', 'King', '555-789-0123', 'alexander.king@example.com', 'General Dentist');

INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (7, 'Charlotte', 'Harris', '555-234-5678', 'charlotte.harris@example.com', 'Oral Pathology');

INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (8, 'Daniel', 'Clark', '555-876-5432', 'daniel.clark@example.com', 'Dental Public Health');

INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (9, 'Amelia', 'Lewis', '555-345-6789', 'amelia.lewis@example.com', 'Oral Radiology');

INSERT INTO Dentist (DentistID, FirstName, LastName, Phone, Email, Specialization)
VALUES (10, 'Henry', 'Walker', '555-432-1098', 'henry.walker@example.com', 'Cosmetic Dentistry');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('123 Maple Street, Toronto, ON M5V1K4', 'Maple Street', 'Toronto', 'ON', 'M5V1K4');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('456 Oak Avenue, Vancouver, BC V6B2W9', 'Oak Avenue', 'Vancouver', 'BC', 'V6B2W9');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('789 Pine Road, Calgary, AB T2P3H7', 'Pine Road', 'Calgary', 'AB', 'T2P3H7');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('101 Birch Lane, Montreal, QC H3B4W8', 'Birch Lane', 'Montreal', 'QC', 'H3B4W8');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('202 Cedar Drive, Ottawa, ON K1P5G4', 'Cedar Drive', 'Ottawa', 'ON', 'K1P5G4');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('303 Elm Street, Edmonton, AB T5J1N9', 'Elm Street', 'Edmonton', 'AB', 'T5J1N9');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('404 Walnut Avenue, Winnipeg, MB R3C4A5', 'Walnut Avenue', 'Winnipeg', 'MB', 'R3C4A5');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('505 Cherry Road, Halifax, NS B3J2K9', 'Cherry Road', 'Halifax', 'NS', 'B3J2K9');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('606 Aspen Lane, Victoria, BC V8W1P6', 'Aspen Lane', 'Victoria', 'BC', 'V8W1P6');

INSERT INTO AddressInfo (Address, Street, City, Province, PostalCode)
VALUES ('707 Willow Street, Quebec, QC G1R4P5', 'Willow Street', 'Quebec', 'QC', 'G1R4P5');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (1, 'Arjun', 'Bhandal', '111-111-1111', 'arjun.bhandal@example.com', '5/12/1992', 'None');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (2, 'Nathan', 'Chan', '222-222-2222', 'nathan.chan@example.com', '8/23/1985', 'Past Medical History: Hyperlipidemia, Chronic Kidney Disease');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (3, 'LeBron', 'James', '333-333-3333', 'lebron.james@example.com', '7/11/2001', 'Past Medical History: Depression, Migraine');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (4, 'Emma', 'Johnson', '444-444-4444', 'emma.johnson@example.com', '2/23/1978', 'Past Medical History: GERD, Osteoarthritis');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (5, 'Liam', 'Smith', '555-555-5555', 'liam.smith@example.com', '4/9/1990', 'Past Medical History: Hypothyroidism, Anxiety');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (6, 'Olivia', 'Brown', '666-666-6666', 'olivia.brown@example.com', '6/30/1983', 'Polycystic Ovary Syndrome (PCOS), Iron Deficiency Anemia');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (7, 'Noah', 'Davis', '777-777-7777', 'noah.davis@example.com', '4/15/1975', 'Past Medical History: Gout, Hyperlipidemia');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (8, 'Ava', 'Wilson', '888-888-8888', 'ava.wilson@example.com', '7/28/1999', 'Past Medical History: Osteoporosis, Atrial Fibrillation');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (9, 'Elijah', 'Martinez', '999-999-9999', 'elijah.martinez@example.com', '10/3/1988', 'Past Medical History: Asthma, Seasonal Allergies');

INSERT INTO Patient (PatientID, FirstName, LastName, Phone, Email, DateOfBirth, MedicalHistory)
VALUES (10, 'Sophia', 'Anderson', '012-345-6789', 'sophia.anderson@example.com', '21/12/2002', 'Past Medical History: Type 1 Diabetes, Hypertension');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (1, 1, 1, '8:45', '12/06/2024', 'Cancelled', 'Passed away');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (2, 2, 2, '9:30', '12/06/2024', 'Scheduled', 'Scheduled');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (3, 3, 3, '14:15', '12/06/2024', 'Completed', 'Done');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (4, 4, 4, '11:45', '12/06/2024', 'Scheduled', 'Scheduled');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (5, 5, 5, '16:00', '12/06/2024', 'Cancelled', 'Rescheduled');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (6, 6, 6, '10:20', '12/06/2024', 'Cancelled', 'Rescheduled');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (7, 7, 7, '13:50', '12/06/2024', 'Cancelled', 'Rescheduled');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (8, 8, 8, '8:10', '12/05/2024', 'Scheduled', 'Scheduled');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (9, 9, 9, '15:35', '12/06/2024', 'Scheduled', 'Scheduled');

INSERT INTO Appointment (AppointmentID, PatientID, DentistID, AppointmentTime, AppointmentDate, Status, Reason)
VALUES (10, 10, 10, '12:25', '12/06/2024', 'Scheduled', 'Scheduled');

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (1, 1, 1, 1, 'Root canal', 1.00);

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (2, 2, 2, 2, 'Cleaning', 2.00);

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (3, 3, 3, 3, 'Filling', 3.00);

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (4, 4, 4, 4, 'Teeth Whitening', 4.00);

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (5, 5, 5, 5, 'Fillings', 5.00);

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (6, 6, 6, 6, 'Veneers', 6.00);

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (7, 7, 7, 7, 'Invisalign Braces', 1.00);

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (8, 8, 8, 8, 'Tooth Extractions', 8.00);

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (9, 9, 9, 9, 'Crowns', 9.00);

INSERT INTO Treatment (TreatmentID, AppointmentID, PatientID, DentistID, Type, Cost)
VALUES (10, 10, 10, 10, 'Dentures', 10.00);

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (1, 1, 1, 1.00, 1.00, '11/23/2024');

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (2, 2, 2, 2.00, 2.00, '11/24/2024');

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (3, 3, 3, 3.00, 3.00, '11/23/2024');

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (4, 4, 4, 4.00, 4.00, '10/23/2024');

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (5, 5, 5, 5.00, 5.00, '11/23/2023');

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (6, 6, 6, 6.00, 6.00, '11/23/2024');

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (7, 7, 7, 1.00, 7.00, '11/23/2024');

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (8, 8, 8, 8.00, 8.00, '11/23/2024');

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (9, 9, 9, 9.00, 9.00, '11/23/2024');

INSERT INTO Bill (BillID, PatientID, TreatmentID, AmountPaid, AmountDue, PaidDate)
VALUES (10, 10, 10, 10.00, 0.00, '11/23/2024');

exit;
EOF
