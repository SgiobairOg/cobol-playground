       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-DATA.

      * Third COBOL program, playing with data
      * Not working yet though...
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *    EXEC SQL INCLUDE  sqlca END-EXEC.
           COPY sqlca.
           EXEC SQL INCLUDE  USER END-EXEC.

           EXEC SQL BEGIN DECLARE SECTION END-EXEC.
               01 USER-REC.
                   05 USER-ID      PIC 9(5).
                   05 USER-NAME    PIC X(25).
                   05 USER-ADDRESS PIC X(50).
           EXEC SQL END DECLARE SECTION END-EXEC.

       PROCEDURE DIVISION.
           MOVE 0001 TO USER-ID.
           MOVE 'Jason Wilson' TO USER-NAME.
           MOVE '1 Berlikplatz, Zurich, CH' TO USER-ADDRESS.

           EXEC SQL
               INSERT INTO USER(USER-ID, USER-NAME, USER-ADDRESS)
               VALUES (:USER-ID, :USER-NAME, USER-ADDRESS)
           END-EXEC.

           IF SQLCODE=0
               DISPLAY 'Record Inserted Successfully'
               DISPLAY USER-REC
           ELSE DISPLAY 'Error'
           END-IF.
       STOP RUN.