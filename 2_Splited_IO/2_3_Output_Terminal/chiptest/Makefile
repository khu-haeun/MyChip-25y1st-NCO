# SystemC Environments -----------------------------------------
export SYSTEMC          = /usr/local/systemc-3.0.0
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH  :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX              = clang++
export CXXFLAGS         = -std=c++17

# SystemC testbench Reuse --------------------------------------
VERIATLED_DIR = ../../source/verilated_model/obj_dir
VERIATLED_DIR_ABS := $(shell realpath $(VERIATLED_DIR))
CURR_DIR_ABS    := $(shell realpath .)

# Targets ------------------------------------------------------
SC_TOP = TestBench
TOP_MODULE = output_terminal
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir

SC_SRCS =  ./main.cpp \
		   ./srcs/TestBenchOfSub3.cpp

SC_HDRS += ./hdrs/TestBenchOfSub3.h \
           ./hdrs/VerilatedSub3.h	\
           ./hdrs/WrapperOfSub3.h

# Verilator vars -----------------------------------------------
V_SCRIPT_DIR = /usr/local/share/verilator/bin
RTL_SRCS =  ./../source/output_terminal.v
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
	@echo '|      run SNUM=<#sample> CNUM=<0~19>  | test for 4 mode([un/signed],[X/Y]). no record   |'
	@echo '|                                      |     ex) make run SNUM=500 CNUM=12               |'
	@echo '|                                      |                                                 |'
	@echo '|      run_5v SNUM=500 CNUM=<0~19>     | 250[sample/mode], record output ./yield/y5v/    |'
	@echo '|                                      |     ex) make run CNUM=12                        |'
	@echo '|                                      |                                                 |'
	@echo '|      run_3p3v SNUM=500 CNUM=<0~19>   | 250[sample/mode], record output ./yield/y3p3v/  |'
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
	stdbuf -oL ./$(TARGET_DIR)/$(TARGET) 500 $(CNUM) | tee ./yield/y5v/$(CNUM)_5v.txt

run_3p3v : $(TARGET_DIR)/$(TARGET) $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	stdbuf -oL ./$(TARGET_DIR)/$(TARGET) 500 $(CNUM) | tee ./yield/y3p3v/$(CNUM)_3p3v.txt

coverage : ./logs/coverage.dat
	$(V_SCRIPT_DIR)/verilator_coverage ./logs/coverage.dat --annotate ./logs/ > coverage.txt

clean :
	rm -rf ./$(TARGET_DIR)