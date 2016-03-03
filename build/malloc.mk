MALLOC_SRC = mm/src/malloc.c
MALLOC_OUT = $(OBJ)/malloc.o

CFLAGS := -nodefaultlibs -c -fno-stack-protector
DEFINE := -DHAVE_MMAP=0 -DHAVE_MREMAP=0 -DNO_MALLOC_STATS=1 -DLACKS_TIME_H=1 -DUSE_DL_PREFIX=1
DABORT := -DABORT=-1

$(MALLOC_OUT): $(MALLOC_SRC)
	$(MKDIR) $(@D)
	$(CC) $(DABORT) $(DEFINE) $(CFLAGS) $(MALLOC_SRC) -o $(MALLOC_OUT)

