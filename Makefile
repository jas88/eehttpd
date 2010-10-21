CFLAGS	:= -O2 -pipe
LIBS	:= -llua5.1 -lpthread -lz -lst
SRCS	:= sqlite3.c eehttpd.c
BINS	:= eehttpd

all:	$(BINS)

eehttpd:	$(SRCS)
	$(CC) $(CFLAGS) -o $@ $(SRCS) $(LIBS)

clean:
	$(RM) $(BINS)
