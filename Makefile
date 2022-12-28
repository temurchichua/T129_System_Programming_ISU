#
# Makefile that builds btest and other helper programs for the CS:APP data lab
# 
CC = gcc
#CFLAGS = -O -m32
LIBS = -lm

all: test

test: sandbox.c
	$(CC) $(LIBS) -o sandbox sandbox.c


test: .c
	$(CC) $(LIBS) -o sandbox sandbox.c

