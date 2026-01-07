# SystemC Environments -----------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17
# Verilator vars -----------------------------------------------

VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I../../../0_algorithm/c_untimed
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8_TB
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl


# Targets ------------------------------------------------------
SRC_DIR = ..

SC_SUB1  	= sub1
SUB1_MODULE = phase_accumulator
VSUB1_SRCS	= ${SRC_DIR}/${SUB1_MODULE}.v
SUB1_TARGET = V$(SUB1_MODULE)

SC_SUB2  	= sub2
SUB2_MODULE = cordic_element
VSUB2_SRCS 	= ${SRC_DIR}/${SUB2_MODULE}.v 
SUB2_TARGET = V$(SUB2_MODULE)

SC_SUB3		= sub3
SUB3_MODULE	= output_terminal
VSUB3_SRCS	= ${SRC_DIR}/${SUB3_MODULE}.v
SUB3_TARGET	= V$(SUB3_MODULE)

# Build Rules --------------------------------------------------
TARGET 		= sub3

run: ${TARGET}

sub1: $(VSUB1_SRCS)
	$(VERILATOR) --sc -Wall $(VSUB1_SRCS) --top-module $(SUB1_MODULE)

sub2: $(VSUB2_SRCS)
	$(VERILATOR) --sc -Wall $(VSUB2_SRCS) --top-module $(SUB2_MODULE)

sub3: $(VSUB3_SRCS)
	$(VERILATOR) --sc -Wall $(VSUB3_SRCS) --top-module $(SUB3_MODULE)

clean:
	rm -rf obj_dir/