// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vnco.h for the primary calling header

#include "Vnco__pch.h"
#include "Vnco__Syms.h"
#include "Vnco___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__ico(Vnco___024root* vlSelf);
#endif  // VL_DEBUG

void Vnco___024root___eval_triggers__ico(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_triggers__ico\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VicoTriggered.setBit(0U, (IData)(vlSelfRef.__VicoFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vnco___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__act(Vnco___024root* vlSelf);
#endif  // VL_DEBUG

void Vnco___024root___eval_triggers__act(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_triggers__act\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VactTriggered.setBit(0U, ((IData)(vlSelfRef.__Vcellinp__nco__clk) 
                                          & (~ (IData)(vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__nco__clk__0))));
    vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__nco__clk__0 
        = vlSelfRef.__Vcellinp__nco__clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vnco___024root___dump_triggers__act(vlSelf);
    }
#endif
}
