# SystemC Environments -----------------------------------------
export SYSTEMC          = /usr/local/systemc-3.0.0
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH  :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX              = clang++
export CXXFLAGS         = -std=c++17

# SystemC testbench Reuse --------------------------------------
SRC_DIR = ./srcs
HDR_DIR = ./hdrs
SUB_DIR = subs
CURR_DIR_ABS    := $(shell realpath .)
UT_DIR = ../../0_Algorithm/cpp_untimed
UT_ABS := $(shell realpath $(UT_DIR))

# TB
SC_SRCS  = ./sc_main.cpp
SC_SRCS += $(UT_DIR)/srcs/subs/FourierTransform.cpp
SC_SRCS += $(wildcard $(CURR_DIR_ABS)/$(SRC_DIR)/*.cpp)

SC_HDRS += $(wildcard $(CURR_DIR_ABS)/$(HDR_DIR)/*.h)


# Verilator vars -----------------------------------------------
V_SCRIPT_DIR = /usr/local/share/verilator/bin
RTL_DIR  =  rtl
RTL_SRCS =  ./$(RTL_DIR)/nco.v \
			./$(RTL_DIR)/phase_accumulator.v \
			./$(RTL_DIR)/cordic_element.v \
			./$(RTL_DIR)/output_terminal.v
VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(CURR_DIR_ABS)/hdrs/
VCFLAGS		+= -CFLAGS -I$(UT_ABS)/hdrs/
VCFLAGS		+= -CFLAGS -I$(UT_ABS)/hdrs/subs/
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS     += -CFLAGS -DVM_COVERAGE 
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl


# Targets ------------------------------------------------------
SC_TOP = QPSK
TOP_MODULE = nco
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir


# Build Rules --------------------------------------------------
all:
	@echo 'Makefile for "NCO" verilog Netlist(gen by yosys) verification SystemC TB'
	@echo '+---< Usage >----------------------------------------------------------------------------+'
	@echo '| make [option]                            | [explain]                                   |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      verilated                           | generate exe file                           |'
	@echo '|      run kHz=[ ] Tx=[ ]                  | run QPSK sim with realtime sim              |'
	@echo '|               |      |                   |                                             |'
	@echo '|              640   TxMsg                 |                                             |'
	@echo '|      plot option=all                     | plot all                                    |'
	@echo '|           option=mod                     | plot modulation result                      |'
	@echo '|           option=demod                   | plot modulationall                          |'
	@echo '|           option=result                  | plot result bitstream                       |'
	@echo '|      clean                               | remove output files                         |'
	@echo '+----------------------------------------------------------------------------------------+'

verilated : $(TARGET_DIR)/$(TARGET)

#$(TARGET_DIR)/$(TARGET) : $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
#	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
#		$(VCFLAGS) $(RTL_SRCS) $(SC_SRCS)

$(TARGET_DIR)/$(TARGET) : $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build --coverage \
		$(VCFLAGS) $(RTL_SRCS) $(SC_SRCS)

kHz=640
Tx=M
run : $(TARGET_DIR)/$(TARGET) $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	./$(TARGET_DIR)/$(TARGET) $(kHz) '$(Tx)' | python3 plot.py
#tee ./utils/out.txt

option=all
plot : utils/out.txt
	python3 utils/plot.py $(option)

coverage : ./logs/coverage.dat
	$(V_SCRIPT_DIR)/verilator_coverage ./logs/coverage.dat --annotate ./logs/

clean :
	rm -rf ./$(TARGET_DIR)