CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O1 -Wall
LDFLAGS = -fno-stack-protector

objects	= swapEndian.o swap.o

default: swapEndian

.PHONY: default clean qemu

swapEndian: $(objects)
	$(CC) $(LDFLAGS) -o $@ $^

swap.o: swap.s
swapEndian.o: swapEndian.c

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -f $(objects) swapEndian

QEMU_CMD = qemu-arm -L /usr/arm-linux-gnueabihf ./swapEndian &
CMD = yes 9 | $(call QEMU_CMD) && sleep 1
qemu: swapEndian
	@yes 5 | $(call QEMU_CMD)
	@sleep 1
	@yes 6 | $(call QEMU_CMD)
	@sleep 1
	@yes 7 | $(call QEMU_CMD)
	@sleep 1
