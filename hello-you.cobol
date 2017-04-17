       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-YOU.

       * My second cobol program
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER-NAME      PIC A(40) VALUE SPACES.

       PROCEDURE DIVISION.
           DISPLAY "Hi, please enter your name: " WITH NO ADVANCING.
           ACCEPT USER-NAME.
           DISPLAY "Hello, ", USER-NAME.
           STOP RUN.