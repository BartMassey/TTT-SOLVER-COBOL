       IDENTIFICATION DIVISION.
       PROGRAM-ID. TTT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 r PIC 9.
       01 c PIC 9.
       01 state.
           05 on-move PIC S9 VALUE 1.
           05 board.
               10 b-row OCCURS 3 TIMES.
                   15 b-elem PIC S9 VALUE 0 OCCURS 3 TIMES.

       01 v PIC S9.

       PROCEDURE DIVISION.
      *   Do the calculation.
          CALL "NegaMax" USING BY REFERENCE state RETURNING v
          DISPLAY SPACE
          DISPLAY v

      *   Validate that the invariant still holds.
          DISPLAY SPACE
          IF on-move IS NOT EQUAL TO 1 THEN
              DISPLAY "on-move = " on-move
          END-IF
          PERFORM TEST AFTER VARYING r FROM 1 BY 1 UNTIL r = 3
              PERFORM TEST AFTER VARYING c FROM 1 BY 1 UNTIL c = 3
                  IF b-elem(r, c) IS NOT EQUAL TO 0 THEN
                      DISPLAY "(" r "," c ") =" b-elem(r, c)
                  END-IF
              END-PERFORM
          END-PERFORM

          STOP RUN.
       END PROGRAM TTT.
