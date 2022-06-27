       IDENTIFICATION DIVISION.
       PROGRAM-ID. TTT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY state.
       01 v PIC S9 COMP.

       PROCEDURE DIVISION.
           CALL "NegaMax" USING
             BY REFERENCE state
             BY REFERENCE v
           DISPLAY v

           STOP RUN.
       END PROGRAM TTT.
