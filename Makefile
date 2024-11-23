CC = gcc
CFLAGS = -Wall

TARGET = makefileAssignment
OBJFILES = driver.o file1.o file2.o
HEADERS = headers.h

all: $(TARGET)

$(TARGET): $(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES)

%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJFILES) $(TARGET)

.PHONY: all clean
