override CFLAGS	+= -O2 -pipe
override LIBS	+= -lpthread -lz -lst
override SRCS	+= sqlite3.c eehttpd.c
override BINS	+= eehttpd

all:	$(BINS)

eehttpd:	$(SRCS)
	$(CC) $(CFLAGS) -o $@ $(SRCS) $(LIBS) $(INCS)

clean:
	$(RM) $(BINS)
