
CC     = cc
CFLAGS = -O2 -Wall
INC    = -framework IOKit
PREFIX = /usr/local
EXEC   = macos-cpu-temp

build : $(EXEC)

clean :
	rm $(EXEC)

$(EXEC) : smc.c
	$(CC) $(CFLAGS) $(INC) -o $@ $?

install : $(EXEC)
	install -v $(EXEC) $(PREFIX)/bin/$(EXEC)
