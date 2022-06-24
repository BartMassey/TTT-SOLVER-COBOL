       IDENTIFICATION DIVISION.
       PROGRAM-ID. TTT.

       DATA DIVISION.
       LOCAL-STORAGE SECTION.
       01 r PIC 9.
       01 c PIC 9.
       01 state.
           05 on-move PIC S9 VALUE 1.
           05 board.
               10 b-row OCCURS 3 TIMES.
                   15 b-elem PIC S9 VALUE 0 OCCURS 3 TIMES.

       01 v PIC S9.

       PROCEDURE DIVISION.
          CALL "NegaMax" USING BY REFERENCE state RETURNING v
          DISPLAY v

          STOP RUN.
       END PROGRAM TTT.
