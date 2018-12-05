
CC ?= gcc

LDFLAGS += -libverbs


TARGETS = ibv_crc32_example

all: $(TARGETS)

ibv_crc32_example: crc32_example.o
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -f *.o $(TARGETS)
