# -----------------------------------------------------
export SYSTEMC			= /usr/local/systemc-3.0.0
export SYSTEMC_HOME		= $(SYSTEMC)
export SYSTEMC_INCLUDE	= $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR	= $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH	:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX				= clang++
export CXXFLAGS			= -std=c++17

SC_TOP  = 	E_nco_tb
SC_SRCS      =  ../../simulation/sc_main.cpp \
				../../simulation/sc_nco_tb.cpp \
				../../../../0_Algorithm/c_untimed/nco.cpp
SC_HDRS      =  ../../simulation/sc_nco_tb.h \
				../../../../0_Algorithm/c_untimed/nco.h \
				./E_nco.h
CFLAGS  = -std=c++17 -g
CFLAGS += -DVCD_TRACE_FIR8
CFLAGS += -DVCD_TRACE_FIR8_TB
LIBS    = -lsystemc
LIBS   += -lm
LIBS   += -lgsl

all: 
	@echo 'Makefile for timed SystemC/C++ test of "FIR8" example'
	@echo '  Additional Libs: GSL(GNU Science Library) for test generation'
	@echo '                   SystemC for timed modeling of PE array*'
	@echo '    * Implement FIR filter into pipe-lined systolic array'
	@echo 'Usage:'
	@echo '    make [option]'
	@echo '         Use one of following optisons'
	@echo '             build'
	@echo '             run'
	@echo '             clean'

build: $(SC_TOP)

$(SC_TOP): $(SC_SRCS) $(SC_HDRS)
	clang++ -I. -I../c_untimed -I$(SYSTEMC_INCLUDE) $(CFLAGS) -L$(SYSTEMC_LIBDIR) \
			-o $(SC_TOP) $(LIBS) $(SC_SRCS)

run: $(SC_TOP)
	./$(SC_TOP)
	
plot_Circle: $(SC_TOP)_out.txt
	python3 plotDFT.py Circle

plot_Sin: $(SC_TOP)_out.txt
	python3 plotDFT.py y
	
plot_Cos: $(SC_TOP)_out.txt
	python3 plotDFT.py x


clean :
	rm -f $(SC_TOP)
	rm -f *.vcd
	rm -f *.txt

debug : $(TARGET_DIR)/$(TARGET)
	ddd $(TARGET_DIR)/$(TARGET)

