#file: Makefile

BIN_DIR  = ./bin
INC_DIR  = ./include
SRC_DIR  = ./src
OBJ_DIR  = ./obj

CC = g++ -std=c++11

ROOT_INC     := $(ROOTSYS)/include
ROOTCFLAGS   := $(shell root-config --cflags)
ROOTLIBS     := $(shell root-config --libs)

LFLAGS       := -Llib -L/usr/lib \
                $(ROOTLIBS) 

CFLAGS       := -ggdb -fPIC -DLINUX -Wall -funsigned-char \
                -I$(INC_DIR) -I$(ROOT_INC) -I$(ROOTCFLAGS)

all: $(BIN_DIR) $(OBJ_DIR) Cosmics

Cosmics: 	main.o
			g++ $(CFLAGS) $(OBJ_DIR)/main.o \
			-o $(BIN_DIR)/Cosmics \
        	$(LFLAGS)  \
        	-l curses

main.o:
	$(CC) $(CFLAGS) -c $(SRC_DIR)/main.cc -o $(OBJ_DIR)/main.o

$(BIN_DIR):
	mkdir -p $(BIN_DIR)/

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)/

clean:
	rm -rf $(BIN_DIR)/
	rm -rf $(OBJ_DIR)/

remove:
	rm -rf $(BIN_DIR)/
	rm -rf $(OBJ_DIR)/
