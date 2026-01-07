#
# Makefile for NCO C-algorithm
#

# Files --------------------------------------------------------------
SRC_DIR = ./srcs
HDR_DIR = ./hdrs

SRCS  = main.c
SRCS += $(wildcard $(SRC_DIR)/*.c) # UntimedNCO.c calcFourier.c
HDRS  = $(wildcard $(HDR_DIR)/*.h) # UntimedNCO.h calcFourier.h define.h 
# --------------------------------------------------------------------

# Compiler -----------------------------------------------------------
CC = gcc
INC_PATH = -I. -I./(HDR_DIR)
LIBS = -lm
EXEC  = UntimedNCO
# --------------------------------------------------------------------

all:
	@echo 'Makefile for un-timed C test of "NCO" example'
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following options'
	@echo '             build'
	@echo '             run'
	@echo '             plot_Circle'
	@echo '             plot_Sin'
	@echo '             plot_Cos'
	@echo '             plot_FT_Sin'
	@echo '             plot_FT_Cos'
	@echo '             clean'

build: $(EXEC)

$(EXEC): $(SRCS) $(HDRS)
	$(CC) $(INC_PATH) $(LIBS) -o $(EXEC) $(SRCS) $(LIBS)

run: $(EXEC)
	./$(EXEC) | tee out$(EXEC).txt

plot_Circle: out$(EXEC).txt
	python3 plot.py Circle

plot_Sin: out$(EXEC).txt
	python3 plot.py y
	
plot_Cos: out$(EXEC).txt
	python3 plot.py x

plot_FT_Sin: out$(EXEC).txt
	python3 plot.py yFT
	
plot_FT_Cos: out$(EXEC).txt
	python3 plot.py xFT

clean:
	rm -f $(EXEC)
	rm -f *.txt
