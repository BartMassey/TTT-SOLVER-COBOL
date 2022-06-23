COBC = cobc
COBFLAGS = -Wall -debug

OBJS = ttt.o negamax.o gamevalue.o 

.SUFFIXES: .cbl

.cbl.o:
	$(COBC) $(COBFLAGS) -c $*.cbl

all: $(OBJS)

clean:
	-rm -f *.o
