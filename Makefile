.SUFFIXES : .c .o

OBJECTS = main.o read.o write.o
SRCS = main.c read.c write.c
TARGET = test

CC = gcc
CFLAGS = -g -c
INC = -I/home/raxis/include

$(TARGET) : $(OBJECS)
	$(CC) -o $(TARGET) $(OBJECTS)

%.o : %.c io.h
	$(CC) $(INC) $(CLFAGS) $<

clean :
	rm -rf $(OBJECTS) $(TARGET) core
