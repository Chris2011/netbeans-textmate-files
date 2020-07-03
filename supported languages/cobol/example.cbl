IDENTIFICATION DIVISION.
            PROGRAM-ID. VARS.
            DATA DIVISION.
              *> working storage defines variables
              WORKING-STORAGE SECTION.
              *> define a number with a sign, 3 numbers, a decimal, and then
              *> two numbers aafter the decimal. by default it should be 0 filled
              01 FIRST-VAR PIC S9(3)V9(2).
              *> do the same thing as above but actually initialize
              *> to a number -123.45
              01 SECOND-VAR PIC S9(3)V9(2) VALUE -123.45.
              *> defines an alphabetic string and initialize it to abcdef
              01 THIRD-VAR PIC A(6) VALUE 'ABCDEF'.
              *> define an alphanumeric string and initialize it to a121$
              01 FOURTH-VAR PIC X(5) VALUE 'A121$'.
              *> create a grouped variable
              01 GROUP-VAR.
                05 SUBVAR-1 PIC 9(3) VALUE 337.
                *> create 3 alphanumerics, but use less than
                *> the allocated space for each of them
                05 SUBVAR-2 PIC X(15) VALUE 'LALALALA'.
                05 SUBVAR-3 PIC X(15) VALUE 'LALALA'.
                05 SUBVAR-4 PIC X(15) VALUE 'LALALA'.
      
            *> print our variables
            PROCEDURE DIVISION.
              DISPLAY "1ST VAR :"FIRST-VAR.
              DISPLAY "2ND VAR :"SECOND-VAR.
              DISPLAY "3RD VAR :"THIRD-VAR.
              DISPLAY "4TH VAR :"FOURTH-VAR.
              DISPLAY "GROUP VAR :"GROUP-VAR.
              STOP RUN.
