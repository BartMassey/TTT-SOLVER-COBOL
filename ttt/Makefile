COBC = cobc
# COBFLAGS = -Wall -debug
COBFLAGS = -Wall -O3

OBJS = negamax.o gamevalue.o 

.SUFFIXES: .cbl

.cbl.o:
	$(COBC) $(COBFLAGS) -c $*.cbl

ttt: $(OBJS) Makefile ttt.cbl
	$(COBC) $(COBFLAGS) -x -o ttt ttt.cbl $(OBJS)

clean:
	-rm -f *.o
