// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vnco.h for the primary calling header

#include "Vnco__pch.h"
#include "Vnco__Syms.h"
#include "Vnco___024root.h"

void Vnco___024root___ctor_var_reset(Vnco___024root* vlSelf);

Vnco___024root::Vnco___024root(Vnco__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , clk("clk")
    , En("En")
    , selXY("selXY")
    , selSign("selSign")
    , Vld("Vld")
    , Dout("Dout")
    , FCW("FCW")
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vnco___024root___ctor_var_reset(this);
}

void Vnco___024root::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vnco___024root::~Vnco___024root() {
}
