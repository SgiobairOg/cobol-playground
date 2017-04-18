      ******************************************************************
      * Author: Jason Wilson <jason@wilsons.io> @wilsonuponsea
      * Date: 2017/04/17
      * Purpose: Introducing my 9-year-old to the world of COBOL
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-NOAH.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01  kind-name-ws PIC X(54) VALUE SPACES.
           01  welcome-ws PIC X(54) VALUE SPACES.
           01  datestring-ws PIC X(54) VALUE SPACES.
           01  date-ws PIC X(54) VALUE SPACES.
           77  time-ws PIC 99B99B99B99.
       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
           DISPLAY "Hello, who am I talking to? " AT 0205 WITH
               FOREGROUND-COLOR 3

           ACCEPT kind-name-ws AT 0234

           PERFORM DISPLAY-GREETING.



      * Display a greeting over the old prompt
       DISPLAY-GREETING.
           STRING
               "Hello, " DELIMITED BY SIZE kind-name-ws DELIMITED BY " "
               " welcome to COBOL!"
               INTO welcome-ws
           END-STRING.
           DISPLAY welcome-ws AT 0205 WITH BLANK LINE FOREGROUND-COLOR 2
           END-DISPLAY
           .

       DISPLAY-TIMESTAMP.
           MOVE FUNCTION MODULE-FORMATTED-DATE TO datestring-ws
           STRING
               "Today is " datestring-ws "."
               INTO date-ws
           DISPLAY date-ws AT 0505 FOREGROUND-COLOR 4
           END-DISPLAY

           DISPLAY "The time is " AT 0705
           END-DISPLAY
           .

       DISPLAY-DECORATION.
           DISPLAY '_.~"(_.~"(_.~"(_.~"(_.~"(_.~"(_.~"(_.~"(_.~"(_.~"('
               AT 0905
           .

       UPDATE-TIME.
           ACCEPT time-ws FROM TIME
           INSPECT time-ws REPLACING ALL " " BY ":"
           DISPLAY time-ws AT 0717
           GO TO UPDATE-TIME
           .
