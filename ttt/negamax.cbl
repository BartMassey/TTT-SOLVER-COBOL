       IDENTIFICATION DIVISION.
       PROGRAM-ID. NegaMax IS RECURSIVE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 v0 PIC S9.

       LOCAL-STORAGE SECTION.
       01 v PIC S9.
       01 r PIC 9.
       01 c PIC 9.

       LINKAGE SECTION.
       01 state.
           05 on-move PIC S9.
           05 board.
               10 b-row OCCURS 3 TIMES.
                   15 b-elem PIC S9 OCCURS 3 TIMES.

       PROCEDURE DIVISION USING BY REFERENCE state.

           CALL "GameValue" USING BY REFERENCE state RETURNING v0
           IF v0 NOT EQUAL -2 THEN
               MOVE v0 TO RETURN-CODE
               GOBACK
           END-IF

           MOVE -1 TO v
           PERFORM TEST AFTER VARYING r FROM 1 BY 1 UNTIL r = 3
               PERFORM TEST AFTER VARYING c FROM 1 BY 1 UNTIL c = 3
                   IF b-elem(r, c) EQUALS 0 THEN
                       MOVE on-move TO b-elem(r, c)
                       COMPUTE on-move EQUALS -on-move
                       CALL "NegaMax" USING BY REFERENCE state
                         RETURNING v0
                       IF v0 GREATER THAN v THEN
                           MOVE v0 TO v
                       COMPUTE on-move EQUALS -on-move
                       MOVE 0 TO b-elem(r, c)
               END-PERFORM
           END-PERFORM

           MOVE v TO RETURN-CODE
           GOBACK.
       END PROGRAM NegaMax.
