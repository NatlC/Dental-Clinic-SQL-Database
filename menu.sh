#!/bin/sh

MainMenu() {
 while [ "$CHOICE" != "E" ]
 do
 clear
 echo "================================================================="
 echo "| Oracle All Inclusive Tool                                      |"
 echo "| Main Menu - Select Desired Operation(s):                       |"
 echo "| <CTRL-Z Anytime to Enter Interactive CMD Prompt>               |"
 echo "-----------------------------------------------------------------"
 echo " $IS_SELECTED1 1) Drop Tables"
 echo " $IS_SELECTED2 2) Create Tables"
 echo " $IS_SELECTED3 3) Populate Tables"
 echo " $IS_SELECTED4 4) Query View Tables"
 echo " $IS_SELECTED5 5) Delete Query View Tables"
 echo " $IS_SELECTED6 6) Retrieve personal information of all patients with an outstanding balance"
 echo " $IS_SELECTED7 7) List dentists who aren't also patients"
 echo " $IS_SELECTED8 8) Show provinces with more than one patient"
 echo " $IS_SELECTED9 9) Display all patient and dentist names"
 echo " $IS_SELECTED10 10) Finds commonalities between the Bill and Treatment tables by overlapping records"
 echo " $IS_SELECTED11 11) Gets all distinct patient addresses"
 echo " $IS_SELECTED12 12) Get all information about scheduled appointments"
 echo " $IS_SELECTED13 13) Get all addresses on Pine Road"
 echo " $IS_SELECTED14 14) Get all treatments in ascending order"
 echo " $IS_SELECTED15 15) Gets every bill with an outstanding balance ascending"
 echo " $IS_SELECTED16 16) Get all medical history for patients and order by last name"
 echo " $IS_SELECTED17 17) Gets full name and phone number of every dentist whose number starts with 555-4"
 echo " $IS_SELECTED18 18) Gets total bill amount by patient"
 echo " $IS_SELECTED19 19) Gets all Doctor/patient relationships for appointment. Shows which doctor is assigned to which patient for an appointment"
 echo " $IS_SELECTED20 20) PatientAlphabeticallyLastName"
 echo " $IS_SELECTED21 21) DentistSpecialAlphabet"
 echo " $IS_SELECTED22 22) BillAmountDueAsc"
 echo " $IS_SELECTEDE E) End/Exit"
 echo "Choose: "
 read CHOICE
 case "$CHOICE" in
   1)
     bash drop_tables.sh
     read -p "Press Enter to continue..."
     ;;
   2)
     bash create_tables.sh
     read -p "Press Enter to continue..."
     ;;
   3)
     bash populate_tables.sh
     read -p "Press Enter to continue..."
     ;;
   4)
     bash views.sh
     read -p "Press Enter to continue..."
     ;;
   5)
     bash delete_views.sh
     read -p "Press Enter to continue..."
     ;;
   6)
     bash q1.sh
     read -p "Press Enter to continue..."
     ;;
   7)
     bash q2.sh
     read -p "Press Enter to continue..."
     ;;
   8)
     bash q3.sh
     read -p "Press Enter to continue..."
     ;;
   9)
     bash q4.sh
     read -p "Press Enter to continue..."
     ;;
   10)
     bash q5.sh
     read -p "Press Enter to continue..."
     ;;
   11)
     bash q6.sh
     read -p "Press Enter to continue..."
     ;;
   12)
     bash q7.sh
     read -p "Press Enter to continue..."
     ;;
   13)
     bash q8.sh
     read -p "Press Enter to continue..."
     ;;
   14)
     bash q9.sh
     read -p "Press Enter to continue..."
     ;;
   15)
     bash q10.sh
     read -p "Press Enter to continue..."
     ;;
   16)
     bash q11.sh
     read -p "Press Enter to continue..."
     ;;
   17)
     bash q12.sh
     read -p "Press Enter to continue..."
     ;;
   18)
     bash q13.sh
     read -p "Press Enter to continue..."
     ;;
   19)
     bash q14.sh
     read -p "Press Enter to continue..."
     ;;
   20)
     bash w1.sh
     read -p "Press Enter to continue..."
     ;;
   21)
     bash w2.sh
     read -p "Press Enter to continue..."
     ;;
   22)
     bash w3.sh
     read -p "Press Enter to continue..."
     ;;
   E)
     exit
     ;;
 esac
 done
}

# Main Program
ProgramStart() {
 clear
 MainMenu
}

ProgramStart

