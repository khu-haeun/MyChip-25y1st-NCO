# ---< envs for systemc>----------------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17
# --------------------------------------------------------------------

# Files --------------------------------------------------------------
# main target files
SRC_DIR = ./srcs
HDR_DIR = ./hdrs
SUB_DIR = subs
OUT_DIR = ./test_vec

SC_SRCS  = ./sc_main.cpp 
SC_SRCS += $(wildcard $(SRC_DIR)/*.cpp)
SC_SRCS += $(wildcard $(SRC_DIR)/$(SUB_DIR)/*.cpp)

SC_HDRS  = $(wildcard $(HDR_DIR)/*.h)
SC_HDRS += $(wildcard $(HDR_DIR)/$(SUB_DIR)/*.h)

# reference model files
REF_DIR = ../cpp_untimed
REF_SRC_DIR = $(REF_DIR)/srcs
REF_HDR_DIR = $(REF_DIR)/hdrs

SC_SRCS += $(wildcard $(REF_SRC_DIR)/*.cpp)
SC_SRCS += $(wildcard $(REF_SRC_DIR)/$(SUB_DIR)/*.cpp)

SC_HDRS  = $(wildcard $(REF_HDR_DIR)/*.h)
SC_HDRS += $(wildcard $(REF_HDR_DIR)/$(SUB_DIR)/*.h)
# --------------------------------------------------------------------

# Compiler -----------------------------------------------------------
CC        = clang++
CFLAGS    = -std=c++17 -g
INC_PATH  = -I$(HDR_DIR) -I$(HDR_DIR)/$(SUB_DIR)
INC_PATH += -I$(REF_HDR_DIR) -I$(REF_HDR_DIR)/$(SUB_DIR)
LIBS      = -lsystemc -lgsl -lm

# Name Of .exe file
SC_TOP    = TestBenchOfTimedNCO
# --------------------------------------------------------------------

all:
	@echo 'Makefile for Timed SystemC test of "NCO" example'
	@echo ''
	@echo '+---< SystemC Timed Model of NCO >-------------------------------------------------------+'
	@echo '                                                                                          '
	@echo '         Timed NCO                                                                        '
	@echo '         +-----------------------------------------------------------------------+        '
	@echo '         |                                                                       |        '
	@echo '   MODE------------------------------------------------------------+             |        '
	@echo '   selXY---------------------------------------------------------+ |             |        '
	@echo '         |                                                       | |             |        '
	@echo '         |     PhaseAcc              CORDIC(pipelined)           | | OutTerm     |        '
	@echo '         |     +------+   +------------------------------------+ | | +------+    |        '
	@echo '         |     |      |   |   +-----+   +-----+       +-----+  | | +->      |    |        '
	@echo '         |     |      |   |   |     |   |     |       |     |  | +--->      |    |        '
	@echo '         |     |      |   |   >     >--->     >- ... ->     >-------->x     |    |        '
	@echo '   FCW--[20]--->      >-------> CE0 >---> CE1 >- ... -> CE7 >  |     |      >--[12]-->D   '
	@echo '         |     |      |   |   >     >--->     >- ... ->     >-------->y     |    |        '
	@echo '         |     |      |   |   |     |   |     |       |     |  |     |      |    |        '
	@echo '         |     |      |   | +->     | +->     |     +->     |  |     |      |    |        '
	@echo '         |     |      |   | | +-----+ | +-----+     | +-----+  |     |      |    |        '
	@echo '         | +--->      |   | |         |             |          |     |      |    |        '
	@echo '         | | +->      | +---+---------+-------------+          |   +->      |    |        '
	@echo '         | | | +------+ | +------------------------------------+   | +------+    |        '
	@echo '         | | |          |                                          |             |        '
	@echo '   en------+ |          |                                          |             |        '
	@echo '   clk-------+----------+------------------------------------------+             |        '
	@echo '         |                                                                       |        '
	@echo '         +-----------------------------------------------------------------------+        '
	@echo '         <----------------------------- 10 clocks ------------------------------->        '
	@echo '                                                                                          '
	@echo '+----------------------------------------------------------------------------------------+'
	@echo ''
	@echo '+---< Usage >----------------------------------------------------------------------------+'
	@echo '| make [option]                            | [explain]                                   |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      build                               | generate exe file                           |'
	@echo '|      run FCW=<20bit_val>                 | run Timed NCO (sample num = 65536)          |'
	@echo '|                   |                      |     ex) make run FCW=4096(default)          |'
	@echo '|              (1~524288)                  |                                             |'
	@echo '|      run_test                            | run all fcw power of two(1,2,4, ... 524288) |'
	@echo '|      clean                               | remove output files                         |'
	@echo '+----------------------------------------------------------------------------------------+'

build: $(SC_TOP)

$(SC_TOP): $(SC_SRCS) $(SC_HDRS)
	$(CC) -I$(SYSTEMC_INCLUDE) $(INC_PATH) $(CFLAGS) -L$(SYSTEMC_LIBDIR) \
			-o $(SC_TOP) $(SC_SRCS) $(LIBS)

FCW=4096
run: $(SC_TOP) 
	./$(SC_TOP) $(FCW) > $(OUT_DIR)/$(FCW).txt
#cat $(OUT_DIR)/$(FCW).txt
#stdbuf -oL ./$(SC_TOP) $(FCW) | tee $(OUT_DIR)/$(FCW).txt

run_test: $(SC_TOP) make_run_wrapper.py
	python3 make_run_wrapper.py > test_result.txt
	cat test_result.txt
	mv test_result.txt ./test_result/

clean :
	rm -f $(SC_TOP)
	rm -f *.txt
