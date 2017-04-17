       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-PARAGRAPH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  START-NUM PIC 9(3) VALUE 10.
       01  COUNT-NUM PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Enter a starting number to start count-down: "
               WITH NO ADVANCING
           END-DISPLAY
           ACCEPT START-NUM
           MOVE START-NUM TO COUNT-NUM
           PERFORM COUNT-FROM-NUM COUNT-NUM TIMES
           STOP RUN
           .

       COUNT-FROM-NUM.
           DISPLAY START-NUM, "..."
           SUBTRACT 1 FROM START-NUM
           .
