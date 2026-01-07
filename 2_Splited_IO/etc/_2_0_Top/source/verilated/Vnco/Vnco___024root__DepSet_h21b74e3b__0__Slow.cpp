// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vnco.h for the primary calling header

#include "Vnco__pch.h"
#include "Vnco___024root.h"

VL_ATTR_COLD void Vnco___024root___eval_static(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_static\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vtrigprevexpr___TOP____Vcellinp__nco__clk__0 
        = vlSelfRef.__Vcellinp__nco__clk;
}

VL_ATTR_COLD void Vnco___024root___eval_initial(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_initial\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vnco___024root___eval_final(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_final\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__stl(Vnco___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vnco___024root___eval_phase__stl(Vnco___024root* vlSelf);

VL_ATTR_COLD void Vnco___024root___eval_settle(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_settle\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY(((0x64U < __VstlIterCount)))) {
#ifdef VL_DEBUG
            Vnco___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("../rtl/nco.v", 1, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vnco___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__stl(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___dump_triggers__stl\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vnco___024root___stl_sequent__TOP__0(Vnco___024root* vlSelf);

VL_ATTR_COLD void Vnco___024root___eval_stl(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_stl\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        Vnco___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vnco___024root___stl_sequent__TOP__0(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___stl_sequent__TOP__0\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__nco__clk, vlSelfRef.clk);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__nco__En, vlSelfRef.En);
    VL_ASSIGN_ISI(20,vlSelfRef.__Vcellinp__nco__FCW, vlSelfRef.FCW);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__nco__selSign, vlSelfRef.selSign);
    VL_ASSIGN_SII(1,vlSelfRef.Vld, (1U & ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
                                          >> 6U)));
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Xcalc));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc));
    } else if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc) 
                     >> 2U));
    } else if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc) 
                     >> 4U));
    } else if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc) 
                     >> 6U));
    } else if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc) 
                     >> 8U));
    } else if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc) 
                     >> 0xaU));
    } else {
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_ 
            = (3U & 0U);
    }
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc));
    } else if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc) 
                     >> 2U));
    } else if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc) 
                     >> 4U));
    } else if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc) 
                     >> 6U));
    } else if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc) 
                     >> 8U));
    } else if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc) 
                     >> 0xaU));
    } else {
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_ 
            = (3U & 0U);
    }
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc));
    } else if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc) 
                     >> 2U));
    } else if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc) 
                     >> 4U));
    } else if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc) 
                     >> 6U));
    } else if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc) 
                     >> 8U));
    } else if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc) 
                     >> 0xaU));
    } else {
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_ 
            = (3U & 0U);
    }
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc));
    } else if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc) 
                     >> 2U));
    } else if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc) 
                     >> 4U));
    } else if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc) 
                     >> 6U));
    } else if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc) 
                     >> 8U));
    } else if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc) 
                     >> 0xaU));
    } else {
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_ 
            = (3U & 0U);
    }
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc));
    } else if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc) 
                     >> 2U));
    } else if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc) 
                     >> 4U));
    } else if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc) 
                     >> 6U));
    } else if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc) 
                     >> 8U));
    } else if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc) 
                     >> 0xaU));
    } else {
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_ 
            = (3U & 0U);
    }
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc));
    } else if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc) 
                     >> 2U));
    } else if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc) 
                     >> 4U));
    } else if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc) 
                     >> 6U));
    } else if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc) 
                     >> 8U));
    } else if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc) 
                     >> 0xaU));
    } else {
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_ 
            = (3U & 0U);
    }
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc));
    } else if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc) 
                     >> 2U));
    } else if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc) 
                     >> 4U));
    } else if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc) 
                     >> 6U));
    } else if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc) 
                     >> 8U));
    } else if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc) 
                     >> 0xaU));
    } else {
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_ 
            = (3U & 0U);
    }
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc));
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_ 
            = (3U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc));
    } else if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 2U));
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 2U));
    } else if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 4U));
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 4U));
    } else if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 6U));
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 6U));
    } else if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 8U));
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 8U));
    } else if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc) 
                     >> 0xaU));
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_ 
            = (3U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc) 
                     >> 0xaU));
    } else {
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_ 
            = (3U & 0U);
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_ 
            = (3U & 0U);
    }
    vlSelfRef.nco__DOT____Vcellout__u_pa__Aout = (3U 
                                                  & ((1U 
                                                      & (IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl))
                                                      ? (IData)(vlSelfRef.nco__DOT__u_pa__DOT__Atmp)
                                                      : 
                                                     ((2U 
                                                       & (IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl))
                                                       ? 
                                                      ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__Atmp) 
                                                       >> 2U)
                                                       : 
                                                      ((4U 
                                                        & (IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl))
                                                        ? 
                                                       ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__Atmp) 
                                                        >> 4U)
                                                        : 
                                                       ((8U 
                                                         & (IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl))
                                                         ? 
                                                        ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__Atmp) 
                                                         >> 6U)
                                                         : 
                                                        ((0x10U 
                                                          & (IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl))
                                                          ? 
                                                         ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__Atmp) 
                                                          >> 8U)
                                                          : 
                                                         ((0x20U 
                                                           & (IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl))
                                                           ? 
                                                          ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__Atmp) 
                                                           >> 0xaU)
                                                           : 0U)))))));
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__nco__selXY, vlSelfRef.selXY);
    vlSelfRef.nco__DOT__u_ot__DOT__Xin12b = ((((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xin5) 
                                               << 0xaU) 
                                              | (((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xin4) 
                                                  << 8U) 
                                                 | ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xin3) 
                                                    << 6U))) 
                                             | (((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xin0))));
    vlSelfRef.nco__DOT__u_ot__DOT__Yin12b = ((((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Yin5) 
                                               << 0xaU) 
                                              | (((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Yin4) 
                                                  << 8U) 
                                                 | ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Yin3) 
                                                    << 6U))) 
                                             | (((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain0))));
    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain0))));
    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain0))));
    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain0))));
    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain0))));
    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain0))));
    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain0))));
    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain0))));
    VL_ASSIGN_SII(12,vlSelfRef.Dout, ((IData)(vlSelfRef.__Vcellinp__nco__selXY)
                                       ? (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xcalc)
                                       : (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Ycalc)));
}

VL_ATTR_COLD void Vnco___024root___eval_triggers__stl(Vnco___024root* vlSelf);

VL_ATTR_COLD bool Vnco___024root___eval_phase__stl(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_phase__stl\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vnco___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        Vnco___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__ico(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___dump_triggers__ico\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VicoTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__act(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___dump_triggers__act\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge __Vcellinp__nco__clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__nba(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___dump_triggers__nba\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge __Vcellinp__nco__clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vnco___024root___ctor_var_reset(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___ctor_var_reset\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const uint64_t __VscopeHash = VL_MURMUR64_HASH(vlSelf->name());
    vlSelf->__Vcellinp__nco__selSign = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 3465132900871380980ull);
    vlSelf->__Vcellinp__nco__selXY = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 7276690929972739911ull);
    vlSelf->__Vcellinp__nco__FCW = VL_SCOPED_RAND_RESET_I(20, __VscopeHash, 9144185436485029532ull);
    vlSelf->__Vcellinp__nco__En = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 10818942585310727557ull);
    vlSelf->__Vcellinp__nco__clk = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 14841513897718678246ull);
    vlSelf->nco__DOT__is__BRA__0__KET__ = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 14953727409056144303ull);
    vlSelf->nco__DOT____Vcellout__u_pa__Aout = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13013848317978983629ull);
    vlSelf->nco__DOT____Vcellout__genblk1__BRA__0__KET____DOT__u_ce__ISout = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 4209027223568054407ull);
    vlSelf->nco__DOT____Vcellout__genblk1__BRA__1__KET____DOT__u_ce__ISout = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 12546895671567474424ull);
    vlSelf->nco__DOT____Vcellout__genblk1__BRA__2__KET____DOT__u_ce__ISout = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 12987584022735332721ull);
    vlSelf->nco__DOT____Vcellout__genblk1__BRA__3__KET____DOT__u_ce__ISout = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 5744379012161016975ull);
    vlSelf->nco__DOT____Vcellout__genblk1__BRA__4__KET____DOT__u_ce__ISout = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 16162177806524757207ull);
    vlSelf->nco__DOT____Vcellout__genblk1__BRA__5__KET____DOT__u_ce__ISout = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 4981695462861723970ull);
    vlSelf->nco__DOT____Vcellout__genblk1__BRA__6__KET____DOT__u_ce__ISout = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 14574854513686565992ull);
    vlSelf->nco__DOT____Vcellout__genblk1__BRA__7__KET____DOT__u_ce__ISout = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 9370499555159198141ull);
    vlSelf->nco__DOT__u_pa__DOT__RdyCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 9454855499931245123ull);
    vlSelf->nco__DOT__u_pa__DOT__acc_reg = VL_SCOPED_RAND_RESET_I(20, __VscopeHash, 4895681851801267782ull);
    vlSelf->nco__DOT__u_pa__DOT__Atmp = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 2676227385496332428ull);
    vlSelf->nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0 = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 8456963169784558198ull);
    vlSelf->nco__DOT__u_ot__DOT__LoadCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 1831573879448790514ull);
    vlSelf->nco__DOT__u_ot__DOT__ISreg = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 7618687364931899058ull);
    vlSelf->nco__DOT__u_ot__DOT__Xin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 14485207468189309384ull);
    vlSelf->nco__DOT__u_ot__DOT__Xin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9967786382308688550ull);
    vlSelf->nco__DOT__u_ot__DOT__Xin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12931767825979483617ull);
    vlSelf->nco__DOT__u_ot__DOT__Xin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5290331635774014734ull);
    vlSelf->nco__DOT__u_ot__DOT__Xin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 17654267483558344533ull);
    vlSelf->nco__DOT__u_ot__DOT__Xin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12276540755692243102ull);
    vlSelf->nco__DOT__u_ot__DOT__Yin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9443149624390044813ull);
    vlSelf->nco__DOT__u_ot__DOT__Yin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 6078928318975996377ull);
    vlSelf->nco__DOT__u_ot__DOT__Yin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 11711257005149646780ull);
    vlSelf->nco__DOT__u_ot__DOT__Yin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10128713855758915549ull);
    vlSelf->nco__DOT__u_ot__DOT__Yin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13080882567813279720ull);
    vlSelf->nco__DOT__u_ot__DOT__Yin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 17430646301374763017ull);
    vlSelf->nco__DOT__u_ot__DOT__Xin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 3400909499851655821ull);
    vlSelf->nco__DOT__u_ot__DOT__Yin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 6834403761563412543ull);
    vlSelf->nco__DOT__u_ot__DOT__Xcalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 14009594396484774576ull);
    vlSelf->nco__DOT__u_ot__DOT__Ycalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 10975529056798736374ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 4222577852290507094ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10343719498128935335ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 17805859674296844309ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 14528393501379956610ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12943845241488350721ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10010885827359061716ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7012546301955369679ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 16470121030693749687ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Xcalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 310544930327884773ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 16725972973732760685ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 10790742547304272900ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 2955333213695285121ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 1865359129050837821ull);
    vlSelf->nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 11492845995447776378ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 5269473554026529469ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16641741020196567407ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 6896848831318015051ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9848322021196032571ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10334548012910048905ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 8088346275159184556ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10666502410324362677ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 3073175984164647985ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 8036139893476526312ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 749916283068507871ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7181364233977865915ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13747566417473967948ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12935030297012159565ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 3814866454652655474ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 224436830406540912ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 17405769768984059093ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 14584274881588139361ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9263051395360801002ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7613897873258534151ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 17107952908546769199ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 4388999310947426428ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 5503830311386013540ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 1859272447315361803ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 11890995155243301169ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 8588170442762676264ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16623584596302691169ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 1813523197271242653ull);
    vlSelf->nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12578502525789577890ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 5567303838041508535ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7197778248783785456ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9238069622670551656ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13447149818317707692ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10667911529968558476ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 1952744229651122674ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 15548600187422429509ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 18432932398639605858ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16783641627546859390ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 15254572467959899583ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 4591567359805295517ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10428412145931346194ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 580356798426918397ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 14004596793327374211ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 2164459567117958860ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 2420367037094662125ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7445390892044023340ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 11471209312574631108ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 1666285692079068751ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 5624152473511673149ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 7172248493511112718ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 6918046178514746546ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 1764988794101145740ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 13202508363844075685ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 12388811139170098231ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12911469591563025750ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 2276315083940859756ull);
    vlSelf->nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 6474199959595575778ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 16504946236987093745ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10196436847187044427ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 206852418238647742ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5278719155652029174ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 18215166175100867238ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 6968910724760655843ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12801174482138176017ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5485010915618064709ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9648779706304126460ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13931192042537337329ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 11846313077510577972ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9506617871994919973ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 15173614362136904399ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 8552094122632701507ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 17646424306564057274ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 6432886359184026129ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 14041667785747726576ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9154268300187670254ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13694551262592130722ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 9352245365354321543ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 4748530396754059888ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 8350302528928763436ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 13433872077510913988ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 8136376365815925783ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 10348734590686468485ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16436072748998317276ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9070002327480465567ull);
    vlSelf->nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7814663907976980747ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 18308740732674786606ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5704523988514610948ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9261126525272963508ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10409950149817121164ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10138610949398697719ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16594881252447657174ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 211386659476812813ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 1491418529427952251ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13885706240709306445ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 15877404719851773174ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10958363485033583209ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7481079131359030180ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13730832291869691748ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 3495762700091325252ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16668025677458200082ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 540568267426569838ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 4979804705963012280ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 3178670550959915413ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13475778587433325861ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 9060071524593569573ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 490432136254111889ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 17712019882860758560ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 6839683468823805728ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 12836216911563891353ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 12047171740903857533ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 3405634931296012653ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 2608689751351318800ull);
    vlSelf->nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 318397726179573821ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 14050532963886811498ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 11627744756143480287ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 17857033763650181064ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 3401291134228948398ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7741575668855562615ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7766542861007939966ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 4877009559932141466ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13925725132831130298ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9221684719969417143ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7144918570878228454ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5271657240936762271ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 18020603946204462624ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13260296271529972907ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 628068228265448851ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5295052490402294729ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5064513066420858249ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 14062841659407968981ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 13204291861615928269ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12479136723676009927ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 14176986143383485758ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 17046614926423148694ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 7375387784835136107ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 17233235167611060475ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 100212645282080067ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 14749309142779059463ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 11758801681739120006ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12684800327349058655ull);
    vlSelf->nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 375907229407173440ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 11894712294890421556ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 4594829069032614393ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 2152685330348797302ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 4530386101913560087ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 2557261778644409118ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5766623321635374102ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16864688963987194710ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 17632694034554329854ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 48845340592722767ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 8887380104630861315ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 14545356082690562235ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9734881049873204538ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 11407207838892611883ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 4144243131965880777ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 8330911337359838698ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 15093188448625166899ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9002827705176137828ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 11074383776636126050ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7606189703030855231ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 17366297511275068199ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 9771662812576676934ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 7545915712091484420ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 6176504242445196775ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 4981938922535896622ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 2513769971240711903ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 12137839592565388988ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 17155061171232393247ull);
    vlSelf->nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 18401708090803737346ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl = VL_SCOPED_RAND_RESET_I(7, __VscopeHash, 17978915850459081851ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 8629989230569439663ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 7012311206140872474ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16530010956610208389ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 6741381951404361437ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5614517435920511268ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16166256997100650592ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 9182694890268588638ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 16440216690088026461ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 4386776082325100323ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10119277252621617571ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 10083787607728207722ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 443156493356898744ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain5 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 14825396291920720421ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain4 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 11060499530539000154ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain3 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 1472286018241330418ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain2 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 14995379050548827655ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain1 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 18011483354297990829ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain0 = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 5122307829647185492ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 12529832056373116444ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 5760449997618465379ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain12b = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 5258582966798096944ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 14166396742576190576ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc = VL_SCOPED_RAND_RESET_I(12, __VscopeHash, 11018783542252746973ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 6148044039427701026ull);
    vlSelf->nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_ = VL_SCOPED_RAND_RESET_I(2, __VscopeHash, 17201088655016669247ull);
    vlSelf->__Vtrigprevexpr___TOP____Vcellinp__nco__clk__0 = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 13270445358100802220ull);
}
