#
# Makefile for FIR8 C-algorithm
# Author: goodkook@gmail.com
#

SRCS = nco.cpp nco_tb.cpp calcDFT.cpp
HDRS = nco.h 
EXEC = nco

INC_PATH = -I. -I/opt/local/include
LIBS = -lm -lgsl

all:
	@echo 'Makefile for un-timed C/C++ test of "FIR8" example'
	@echo '  * GNU Science Library(GSL) is used for noise generation'
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following options'
	@echo '             build'
	@echo '             run'
	@echo '             plot_x'
	@echo '             plot_fx'
	@echo '             plot_y'
	@echo '             plot_fy'
	@echo '             clean'

build: $(EXEC)

$(EXEC): $(SRCS) $(HDRS)
	gcc $(INC_PATH) $(LIBS) -o $(EXEC) $(SRCS) $(LIBS)

run: $(EXEC)
	./$(EXEC)
# $(EXEC)_out.txt

$(EXEC)_out.txt: $(EXEC)
	./$(EXEC) > $(EXEC)_out.txt

plot_Circle: $(EXEC)_out.txt
	python3 plotDFT.py Circle

plot_Sin: $(EXEC)_out.txt
	python3 plotDFT.py y
	
plot_Cos: $(EXEC)_out.txt
	python3 plotDFT.py x

plot_DFT_Sin: $(EXEC)_out.txt
	python3 plotDFT.py yDFT
	
plot_DFT_Cos: $(EXEC)_out.txt
	python3 plotDFT.py xDFT

clean:
	rm -f $(EXEC)
	rm -f *.txt
