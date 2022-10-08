CC = clang
SRC = show-bytes.c
FLAGS = -Wall 
OBJ = show-bytes

debug:
	$(CC) $(FLAGS) -Og $(SRC) -o $(OBJ) 

release:
	$(CC) $(FLAGS) -O3 $(SRC) -o $(OBJ)

clean:
	rm $(OBJ)

