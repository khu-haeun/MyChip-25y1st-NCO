# SystemC Environments -----------------------------------------
export SYSTEMC          = /usr/local/systemc-3.0.0
export SYSTEMC_HOME     = $(SYSTEMC)
export SYSTEMC_INCLUDE  = $(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR   = $(SYSTEMC_HOME)/lib-linux64
export LD_LIBRARY_PATH  :=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)
export CXX              = clang++
export CXXFLAGS         = -std=c++17

# SystemC testbench Reuse --------------------------------------
UNTIMED_DIR = ../../../../0_Algorithm/cpp_untimed
TIMED_DIR   = ../../../../0_Algorithm/sc_timed
CURR_DIR_ABS    := $(shell realpath .)
UNTIMED_DIR_ABS := $(shell realpath $(UNTIMED_DIR))
TIMED_DIR_ABS   := $(shell realpath $(TIMED_DIR))
VNCO_DIR = $(VERIATLED_DIR)/Vnco

# 💡 Verilator 빌드에 사용할 테스트벤치 C++ 파일 목록 (Vnco.cpp는 여기서 제외)
TB_SRCS  =  ./main.cpp \
            ./srcs/$(SC_TOP).cpp

# 💡 Verilator가 직접 처리하지 않는, 사용자 정의된 C++ 함수 파일 목록
# TB
SC_SRCS =  ./main.cpp \
		   ./srcs/TestBench.cpp\

# Untimed
SC_SRCS += ./$(UNTIMED_DIR)/srcs/UntimedNCO.cpp \
           ./$(UNTIMED_DIR)/srcs/subs/UntimedPhaseAccumulator.cpp \
           ./$(UNTIMED_DIR)/srcs/subs/UntimedCORDIC.cpp \
           ./$(UNTIMED_DIR)/srcs/subs/UntimedOutputTerminal.cpp \
           ./$(UNTIMED_DIR)/srcs/subs/FourierTransform.cpp 

SC_HDRS += ./hdrs/TestBench.h \
		   ./hdrs/VerilatedNCO.h
SC_HDRS += ./$(UNTIMED_DIR)/hdrs/UntimedNCO.h \
           ./$(UNTIMED_DIR)/hdrs/subs/UntimedPhaseAccumulator.h \
           ./$(UNTIMED_DIR)/hdrs/subs/UntimedCORDIC.h \
           ./$(UNTIMED_DIR)/hdrs/subs/UntimedOutputTerminal.h \
           ./$(UNTIMED_DIR)/hdrs/subs/FourierTransform.h 
SC_HDRS += ./$(TIMED_DIR)/hdrs/TimedNCO.h \
           ./$(TIMED_DIR)/hdrs/subs/TimedPhaseAccumulator.h \
           ./$(TIMED_DIR)/hdrs/subs/TimedCORDICElement.h \
           ./$(TIMED_DIR)/hdrs/subs/TimedOutputTerminal.h

# Verilator vars -----------------------------------------------
V_SCRIPT_DIR = /usr/local/share/verilator/bin
RTL_DIR  =  ../../source/rtl
RTL_SRCS =  ./$(RTL_DIR)/nco.v \
			./$(RTL_DIR)/phase_accumulator.v \
			./$(RTL_DIR)/cordic_element.v \
			./$(RTL_DIR)/output_terminal.v
VERILATOR    = verilator
VCFLAGS    	 = -CFLAGS -std=c++17
VCFLAGS		+= -CFLAGS -g
VCFLAGS		+= -CFLAGS -I$(CURR_DIR_ABS)/hdrs
VCFLAGS		+= -CFLAGS -I$(UNTIMED_DIR_ABS)/hdrs
VCFLAGS		+= -CFLAGS -I$(UNTIMED_DIR_ABS)/hdrs/subs
#VCFLAGS		+= -CFLAGS -I/usr/local/share/verilator/include
#VCFLAGS		+= -CFLAGS -I$(TIMED_DIR_ABS)/hdrs
#VCFLAGS		+= -CFLAGS -I$(TIMED_DIR_ABS)/hdrs/subs
VCFLAGS		+= -CFLAGS -DVERILATED
VCFLAGS     += -CFLAGS -DVM_COVERAGE 
VCFLAGS		+= -LDFLAGS -lm
VCFLAGS		+= -LDFLAGS -lgsl


# Targets ------------------------------------------------------
SC_TOP = TestBench
TOP_MODULE = nco
TARGET       = V$(TOP_MODULE)
TARGET_DIR   = obj_dir


# Build Rules --------------------------------------------------
verilated : $(TARGET_DIR)/$(TARGET)

#$(TARGET_DIR)/$(TARGET) : $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
#	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build \
#		$(VCFLAGS) $(RTL_SRCS) $(SC_SRCS)

$(TARGET_DIR)/$(TARGET) : $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	$(VERILATOR) --sc -Wall --top-module $(TOP_MODULE) $(VERILOG_DEF) --exe --build --coverage \
		$(VCFLAGS) $(RTL_SRCS) $(SC_SRCS)

run : $(TARGET_DIR)/$(TARGET) $(RTL_SRCS) $(SC_SRCS) $(SC_HDRS)
	./$(TARGET_DIR)/$(TARGET) $(FCW) > out.txt

coverage : ./logs/coverage.dat
	$(V_SCRIPT_DIR)/verilator_coverage ./logs/coverage.dat --annotate ./logs/

clean :
	rm -rf ./$(TARGET_DIR)