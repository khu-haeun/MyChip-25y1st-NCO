#ifndef _DEFINE_H_
#define _DEFINE_H_

//verilog netlist sim with verilator
#define DUT_VERILATED

//verilog netlist sim with questa sim
//#define DUT_VERILOG
#ifdef DUT_VERILOG
#define SNUM 200
#endif

#endif