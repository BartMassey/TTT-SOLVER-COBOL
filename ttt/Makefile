COBC = cobc
COBFLAGS = -Wall -debug

.SUFFIXES: .cbl

.cbl.o:
	$(COBC) $(COBFLAGS) -c $*.cbl

all: negamax.o gamevalue.o

clean:
	-rm -f *.o
