# Make file for generate simbolic links

#CMD = ln -s
CMD = cp

# DIRs
# Curr dir
ASIC_NET_DIR = ./asic
FPGA_NET_DIR = ./fpga

# target dir
SPLITED_IO_DIR = ../../..
ASIC_NET_SUBS_DIR = synthesis
FPGA_NET_SUBS_DIR = synthesis/Vivado
ASIC_FILE_TAIL = .v
FPGA_FILE_TAIL = _netlist_bb.v

#sub1
SUB1 = phase_accumulator
SUB1_DIR = $(SPLITED_IO_DIR)/2_1_Phase_Acc
SUB1_ABS = $(shell realpath $(SUB1_DIR))

#sub2
SUB2 = cordic_element
SUB2_DIR = $(SPLITED_IO_DIR)/2_2_Cordic_Element
SUB2_ABS = $(shell realpath $(SUB2_DIR))

#sub3
SUB3 = output_terminal
SUB3_DIR = $(SPLITED_IO_DIR)/2_3_Output_Terminal
SUB3_ABS = $(shell realpath $(SUB3_DIR))

all: 
	@echo 'Makefile for generate symbolic link for netlist(**all netlist should be pre-generated)'
	@echo '+---< Usage >----------------------------------------------------------------------------+'
	@echo '| make [option]                            | [explain]                                   |'
	@echo '|----------------------------------------------------------------------------------------|'
	@echo '|      run                                 | gen subs netlist links at ./asic & ./fpga   |'
	@echo '|                                          |                                             |'
	@echo '|      sub1                                | gen sub1 netlist links at ./asic & ./fpga   |'
	@echo '|      sub1_asic                           | gen sub1 asic-netlist link at ./asic        |'
	@echo '|      sub1_fpga                           | gen sub1 fpga-netlist link at ./fpga        |'
	@echo '|                                          |                                             |'
	@echo '|      sub2                                | gen sub2 netlist links at ./asic & ./fpga   |'
	@echo '|      sub2_asic                           | gen sub2 asic-netlist link at ./asic        |'
	@echo '|      sub2_fpga                           | gen sub2 fpga-netlist link at ./fpga        |'
	@echo '|                                          |                                             |'
	@echo '|      sub3                                | gen sub3 netlist links at ./asic & ./fpga   |'
	@echo '|      sub3_asic                           | gen sub3 asic-netlist link at ./asic        |'
	@echo '|      sub3_fpga                           | gen sub3 fpga-netlist link at ./fpga        |'
	@echo '+----------------------------------------------------------------------------------------+'

run: sub1 sub2 sub3

sub1: sub1_asic sub1_fpga

sub1_asic: $(SUB1_DIR)/$(ASIC_NET_SUBS_DIR)/$(SUB1)$(ASIC_FILE_TAIL)
	$(CMD) $(SUB1_ABS)/$(ASIC_NET_SUBS_DIR)/$(SUB1)$(ASIC_FILE_TAIL) $(ASIC_NET_DIR)/$(SUB1)$(ASIC_FILE_TAIL)

sub1_fpga: $(SUB1_DIR)/$(FPGA_NET_SUBS_DIR)/$(SUB1)$(FPGA_FILE_TAIL)
	$(CMD) $(SUB1_ABS)/$(FPGA_NET_SUBS_DIR)/$(SUB1)$(FPGA_FILE_TAIL) $(FPGA_NET_DIR)/$(SUB1)$(FPGA_FILE_TAIL)
 
sub2: sub2_asic sub2_fpga

sub2_asic: $(SUB2_DIR)/$(ASIC_NET_SUBS_DIR)/$(SUB2)$(ASIC_FILE_TAIL)
	$(CMD) $(SUB2_ABS)/$(ASIC_NET_SUBS_DIR)/$(SUB2)$(ASIC_FILE_TAIL) $(ASIC_NET_DIR)/$(SUB2)$(ASIC_FILE_TAIL)

sub2_fpga: $(SUB2_DIR)/$(FPGA_NET_SUBS_DIR)/$(SUB2)$(FPGA_FILE_TAIL)
	$(CMD) $(SUB2_ABS)/$(FPGA_NET_SUBS_DIR)/$(SUB2)$(FPGA_FILE_TAIL) $(FPGA_NET_DIR)/$(SUB2)$(FPGA_FILE_TAIL)

sub3: sub3_asic sub3_fpga

sub3_asic: $(SUB3_DIR)/$(ASIC_NET_SUBS_DIR)/$(SUB3)$(ASIC_FILE_TAIL)
	$(CMD) $(SUB3_ABS)/$(ASIC_NET_SUBS_DIR)/$(SUB3)$(ASIC_FILE_TAIL) $(ASIC_NET_DIR)/$(SUB3)$(ASIC_FILE_TAIL)

sub3_fpga: $(SUB3_DIR)/$(FPGA_NET_SUBS_DIR)/$(SUB3)$(FPGA_FILE_TAIL)
	$(CMD) $(SUB3_ABS)/$(FPGA_NET_SUBS_DIR)/$(SUB3)$(FPGA_FILE_TAIL) $(FPGA_NET_DIR)/$(SUB3)$(FPGA_FILE_TAIL)

clean:
	rm ./asic/*.v
	rm ./fpga/*.v