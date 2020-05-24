CFLAGS=-I.
# -DEVENT__HAVE_STRUCT_IN6_ADDR -DEVENT__HAVE_SA_FAMILY_T -DEVENT__HAVE_STRUCT_SOCKADDR_IN6
LDFLAGS=-levent -O3
EXEC=dns2doh
OBJS=dns2doh.o
STRIP=strip
all: build

build: ${OBJS}
	${CC} -o ${EXEC} ${OBJS} ${CFLAGS} ${LDFLAGS}

clean:
	rm *.o ${EXEC}


docker:
	docker build -t dns2doh .
