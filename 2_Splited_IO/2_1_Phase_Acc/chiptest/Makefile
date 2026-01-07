# SystemC Environments -----------------------------------------
export SYSTEMC          = /usr/local/systemc-3.0.0
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH  :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX              = clang++
export CXXFLAGS         = -std=c++17

# SystemC testbench Reuse --------------------------------------
CURR_DIR_ABS    := $(shell realpath .)

# Targets ------------------------------------------------------
SC_TOP = TestBench
TOP_MODULE = phase_accumulator
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

SC_SRCS =  ./main.cpp \
		   ./srcs/TestBenchOfSub1.cpp

SC_HDRS += ./hdrs/TestBenchOfSub1.h \
           ./hdrs/VerilatedSub1.h \
           ./hdrs/WrapperOfSub1.h

# Verilator vars -----------------------------------------------
V_SCRIPT_DIR = /usr/local/share/verilator/bin
RTL_SRCS =  ./../source/phase_accumulator.v
VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(CURR_DIR_ABS)/hdrs
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS     += -CFLAGS -DVM_COVERAGE
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl

# Build Rules --------------------------------------------------
all:
	@echo '+---< Usage >----------------------------------------------------------------------------+'
	@echo '| make [option]                        | [explain]                                       |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      verilated                       | build with verilator                            |'
	@echo '|                                      |                                                 |'
	@echo '|      run SNUM=<#sample> CNUM=<0~19>  | test for FCW=power of two. no record            |'
	@echo '|                                      |     ex) make run SNUM=500 CNUM=12               |'
	@echo '|                                      |                                                 |'
	@echo '|      run_5v SNUM=100 CNUM=<0~19>     | 100[sample/FCW], record output ./yield/y5v/     |'
	@echo '|                                      |     ex) make run CNUM=12                        |'
	@echo '|                                      |                                                 |'
	@echo '|      run_3p3v SNUM=100 CNUM=<0~19>   | 100[sample/FCW], record output ./yield/y3p3v/   |'
	@echo '|                                      |     ex) make run CNUM=12                        |'
	@echo '|                                      |                                                 |'
	@echo '|      run coverage                    | generate coverage report                        |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      clean                           | remove output files                             |'
	@echo '+----------------------------------------------------------------------------------------+'


verilated : $(TARGET_DIR)/$(TARGET)

$(TARGET_DIR)/$(TARGET) : $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(RTL_SRCS) $(VERILOG_DEF) --exe --build --coverage \
		$(VCFLAGS) $(SC_SRCS)

run : $(TARGET_DIR)/$(TARGET) $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	./$(TARGET_DIR)/$(TARGET) $(SNUM) $(CNUM)

run_5v : $(TARGET_DIR)/$(TARGET) $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	stdbuf -oL ./$(TARGET_DIR)/$(TARGET) 100 $(CNUM) | tee ./yield/y5v/$(CNUM)_5v.txt

run_3p3v : $(TARGET_DIR)/$(TARGET) $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	stdbuf -oL ./$(TARGET_DIR)/$(TARGET) 100 $(CNUM) | tee ./yield/y3p3v/$(CNUM)_3p3v.txt

coverage : ./logs/coverage.dat
	$(V_SCRIPT_DIR)/verilator_coverage ./logs/coverage.dat --annotate ./logs/ > coverage.txt

clean :
	rm -rf ./$(TARGET_DIR)