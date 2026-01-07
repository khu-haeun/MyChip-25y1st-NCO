#
# Makefile for NCO Cpp-algorithm
# 

# Files --------------------------------------------------------------
SRC_DIR = ./srcs
HDR_DIR = ./hdrs
SUB_DIR = subs
TV_DIR  = ./test_vec

SRCS  = ./main.cpp
SRCS += $(wildcard $(SRC_DIR)/*.cpp)
SRCS += $(wildcard $(SRC_DIR)/$(SUB_DIR)/*.cpp)

HDRS  = $(wildcard $(HDR_DIR)/*.h)
HDRS += $(wildcard $(HDR_DIR)/$(SUB_DIR)/*.h)
# --------------------------------------------------------------------

# Compiler -----------------------------------------------------------
CC = g++
CFLAGS = -Wall -std=c++17
INC_PATH = -I. -I$(HDR_DIR) -I$(HDR_DIR)/$(SUB_DIR)
LIBS = -lgsl -lm

# Name of .exe file
EXEC_TEST = UntimedNCO_TEST
EXEC_FCW = UntimedNCO_FCW
# --------------------------------------------------------------------

all:
	@echo '+---< C++ Untimed Model of NCO >---------------------------------------------------------+'
	@echo '                                                                                          '
	@echo '         Untimed NCO                                                                      '
	@echo '         +-----------------------------------------------------------------------+        '
	@echo '         |                                                                       |        '
	@echo '   MODE------------------------------------------------------------+             |        '
	@echo '         |                                                         |             |        '
	@echo '         |                                                         |             |        '
	@echo '         |     PhaseAcc                   CORDIC                   | OutTerm     |        '
	@echo '         |     +------+   +------------------------------------+   | +------+    |        '
	@echo '         |     |      |   |                                    |   +->      |    |        '
	@echo '         |     |      |   |                                    |     |      |    |        '
	@echo '         |     |      |   |     //CORDIC Calculation Loop      >----->x     >--[12]-->X   '
	@echo '   FCW--[20]--->      >--->     for(int i = 0; i < 8; i++){          |      |    |        '
	@echo '         |     |      |   |       //shift x & y                >----->y     >--[12]-->Y   '
	@echo '         |     |      |   |       //add/sub x & y              |     |      |    |        '
	@echo '         |     |      |   |       //phase adj with arctan      |     |      |    |        '
	@echo '         |     |      |   |     }                              |     |      |    |        '
	@echo '         |  +-->      |   |                                    |     |      |    |        '
	@echo '         |  |  |      |   |                                    |     |      |    |        '
	@echo '         |  |  +------+   +------------------------------------+     +------+    |        '
	@echo '         |  |                                                                    |        '
	@echo '         |  +--void resetUntimedNCO();                                           |        '
	@echo '         |                                                                       |        '
	@echo '         |                                                                       |        '
	@echo '         +-----------------------------------------------------------------------+        '
	@echo '         <------------------------------ Untimed -------------------------------->        '
	@echo '                                                                                          '
	@echo '+----------------------------------------------------------------------------------------+'
	@echo ''
	@echo '+---< Usage >----------------------------------------------------------------------------+'
	@echo '| make [option]                            | [explain]                                   |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      build_test                          | generate exe file                           |'
	@echo '|      run_test option=<1,2,3>             | test UntimedNCO with options                |'
	@echo '|                                          |     option 1: Freq accuracy                 |'
	@echo '|                                          |            2: SFDR                          |'
	@echo '|                                          |            3: CORDIC                        |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      build_fcw                           | generate exe file                           |'
	@echo '|      run_fcw FCW=<1~524288>              | run UntimedNCO                              |'
	@echo '|                                          |     ex) make run FCW=4096                   |'
	@echo '|      plot FCW=<20bit_val>                | plot NCO output both unsigned and signed    |'
	@echo '|      plot_unsigend FCW=<20bit_val>       | plot NCO output unsigned only               |'
	@echo '|      plot_signed FCW=<20bit_val>         | plot NCO output signed only                 |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      clean                               | remove output files                         |'
	@echo '+----------------------------------------------------------------------------------------+'

build_test: $(EXEC_TEST)

$(EXEC_TEST): $(SRCS) $(HDRS)
	$(CC) $(CFLAGS) -DTEST $(INC_PATH) -o $(EXEC_TEST) $(SRCS) $(LIBS)

run_test: $(EXEC_TEST)
	./$(EXEC_TEST) $(option)

build_fcw: $(EXEC_FCW)

$(EXEC_FCW): $(SRCS) $(HDRS)
	$(CC) $(CFLAGS) -DCLA $(INC_PATH) -o $(EXEC_FCW) $(SRCS) $(LIBS)

FCW=4096
run_fcw: $(EXEC_FCW)
	./$(EXEC_FCW) $(FCW) 0 
	./$(EXEC_FCW) $(FCW) 1

plot: ${TV_DIR}/us$(FCW)_NCO.txt ${TV_DIR}/s$(FCW)_NCO.txt
	python3 plot.py $(FCW) 1 &
	python3 plot.py $(FCW) 0 &

plot_unsigned: ${TV_DIR}/us$(FCW)_NCO.txt
	python3 plot.py $(FCW) 1

plot_signed: ${TV_DIR}/s$(FCW)_NCO.txt
	python3 plot.py $(FCW) 0

clean:
	rm -f $(EXEC_TEST)
	rm -f $(EXEC_FCW)
	rm -f $(TV_DIR)/*.txt
