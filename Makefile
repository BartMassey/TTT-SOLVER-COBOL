COBC = cobc
# COBFLAGS = -Wall -debug
# Can use -std=cobol85 to check compatibility,
# except not for negamax.cbl which is recursive.
COBFLAGS = -Wall -O3

OBJS = ttt.o negamax.o gamevalue.o 

.SUFFIXES: .cbl

.cbl.o:
	$(COBC) $(COBFLAGS) -c $*.cbl

ttt: $(OBJS) Makefile
	$(COBC) $(COBFLAGS) -x -o ttt $(OBJS)

ttt.o: ttt.cbl
	$(COBC) $(COBFLAGS) -x -c ttt.cbl

$(OBJS): state.cpy

clean:
	-rm -f *.o ttt
