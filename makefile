CC = gcc
CFLAGS = -Wall -Wextra
SRCS = 1.c 2.c 3.c 4.c main.c
OBJS = $(SRCS:.c=.o)
TARGET = final.elf

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

