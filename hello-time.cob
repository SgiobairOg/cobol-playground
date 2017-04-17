       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-CLOCK.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  time-ws PIC 99B99B99B99.
       01  count-ws PIC 9(8) VALUE 0.

       PROCEDURE DIVISION.

       P1.
           DISPLAY "The current system time is:" AT 0310 WITH
               FOREGROUND-COLOR 2
           END-DISPLAY
           .

       L1.
           ACCEPT time-ws FROM TIME
           INSPECT time-ws REPLACING ALL " " BY ":"
           DISPLAY time-ws AT 0510
           END-DISPLAY
           GO TO L1
           .
