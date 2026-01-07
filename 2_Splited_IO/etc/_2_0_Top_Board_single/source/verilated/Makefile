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
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8
VCFLAGS		+= -CFLAGS -DVCD_TRACE_FIR8_TB
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl


# Targets ------------------------------------------------------
RTL_DIR		= ../rtl
RTL_DIR_ABS := $(shell realpath $(RTL_DIR))  

# sub1
SC_SUB1  	= Vsub1
VSUB1_SRCS  = $(RTL_DIR_ABS)/phase_accumulator.v
SUB1_MODULE = phase_accumulator
SUB1_TARGET = V$(SUB1_MODULE)

# sub2
SC_SUB2  	= Vsub2
VSUB2_SRCS  = $(RTL_DIR_ABS)/cordic_element.v 
SUB2_MODULE = cordic_element
SUB2_TARGET = V$(SUB2_MODULE)

# sub3
SC_SUB3  	= Vsub3
VSUB3_SRCS  = $(RTL_DIR_ABS)/output_terminal.v
SUB3_MODULE = output_terminal
SUB3_TARGET = V$(SUB3_MODULE)

# nco
SC_NCO  	= Vnco
VNCO_SRCS = $(RTL_DIR_ABS)/nco.v \
			  $(VSUB1_SRCS) \
			  $(VSUB2_SRCS) \
			  $(VSUB3_SRCS)
NCO_MODULE  = nco
TARGET      = V$(TOP_MODULE)

#nco 2out
SC_NCO2OUT  = Vnco2out
VNCO2OUT_SRCS 	= $(RTL_DIR_ABS)/nco2out.v \
			  $(VSUB1_SRCS) \
			  $(VSUB2_SRCS) \
			  $(VSUB3_SRCS)
NCO2OUT_MODULE  = nco2out
TARGET      = Vnco2out

# Build Rules --------------------------------------------------
all: $(SC_NCO) $(SC_NCO2OUT) $(SC_SUB1) $(SC_SUB2) $(SC_SUB3)

$(SC_NCO): $(VNCO_SRCS)
	$(VERILATOR) --sc --Mdir ./$(SC_NCO)/ -Wall $(VNCO_SRCS) --top-module $(NCO_MODULE) --exe --build

$(SC_NCO2OUT): $(VNCO2OUT_SRCS)
	$(VERILATOR) --sc --Mdir ./$(SC_NCO2OUT)/ -Wall $(VNCO2OUT_SRCS) --top-module $(NCO2OUT_MODULE) --exe --build

$(SC_SUB1): $(VSUB1_SRCS)
	$(VERILATOR) --sc --Mdir ./$(SC_SUB1)/ -Wall $(VSUB1_SRCS) --top-module $(SUB1_MODULE) --exe --build

$(SC_SUB2): $(VSUB2_SRCS)
	$(VERILATOR) --sc --Mdir ./$(SC_SUB2)/ -Wall $(VSUB2_SRCS) --top-module $(SUB2_MODULE) --exe --build

$(SC_SUB3): $(VSUB3_SRCS)
	$(VERILATOR) --sc --Mdir ./$(SC_SUB3)/ -Wall $(VSUB3_SRCS) --top-module $(SUB3_MODULE) --exe --build

clean: 
	rm -rf V*