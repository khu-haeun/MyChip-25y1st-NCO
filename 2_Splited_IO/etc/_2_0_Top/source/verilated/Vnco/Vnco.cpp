// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vnco__pch.h"

//============================================================
// Constructors

Vnco::Vnco(sc_core::sc_module_name /* unused */)
    : VerilatedModel{*Verilated::threadContextp()}
    , vlSymsp{new Vnco__Syms(contextp(), name(), this)}
    , clk{vlSymsp->TOP.clk}
    , En{vlSymsp->TOP.En}
    , selXY{vlSymsp->TOP.selXY}
    , selSign{vlSymsp->TOP.selSign}
    , Vld{vlSymsp->TOP.Vld}
    , Dout{vlSymsp->TOP.Dout}
    , FCW{vlSymsp->TOP.FCW}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
    // Sensitivities on all clocks and combinational inputs
    SC_METHOD(eval);
    sensitive << clk;
    sensitive << En;
    sensitive << selXY;
    sensitive << selSign;
    sensitive << FCW;

}

//============================================================
// Destructor

Vnco::~Vnco() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vnco___024root___eval_debug_assertions(Vnco___024root* vlSelf);
#endif  // VL_DEBUG
void Vnco___024root___eval_static(Vnco___024root* vlSelf);
void Vnco___024root___eval_initial(Vnco___024root* vlSelf);
void Vnco___024root___eval_settle(Vnco___024root* vlSelf);
void Vnco___024root___eval(Vnco___024root* vlSelf);

void Vnco::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vnco::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vnco___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vnco___024root___eval_static(&(vlSymsp->TOP));
        Vnco___024root___eval_initial(&(vlSymsp->TOP));
        Vnco___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vnco___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vnco::eventsPending() { return false; }

uint64_t Vnco::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "No delays in the design");
    return 0;
}

//============================================================
// Utilities

//============================================================
// Invoke final blocks

void Vnco___024root___eval_final(Vnco___024root* vlSelf);

VL_ATTR_COLD void Vnco::final() {
    Vnco___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vnco::hierName() const { return vlSymsp->name(); }
const char* Vnco::modelName() const { return "Vnco"; }
unsigned Vnco::threads() const { return 1; }
void Vnco::prepareClone() const { contextp()->prepareClone(); }
void Vnco::atClone() const {
    contextp()->threadPoolpOnClone();
}
