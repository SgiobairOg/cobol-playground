       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-CLOCK.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  time-ws PIC 99B99B99B99.
       01  count-ws PIC 9(8) VALUE 0.

       PROCEDURE DIVISION.

       L1.
           ACCEPT time-ws FROM TIME.
           DISPLAY time-ws.
           GO TO L1.