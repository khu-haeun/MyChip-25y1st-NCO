// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vnco.h for the primary calling header

#include "Vnco__pch.h"
#include "Vnco___024root.h"

void Vnco___024root___ico_sequent__TOP__0(Vnco___024root* vlSelf);

void Vnco___024root___eval_ico(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_ico\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        Vnco___024root___ico_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vnco___024root___ico_sequent__TOP__0(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___ico_sequent__TOP__0\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__nco__clk, vlSelfRef.clk);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__nco__En, vlSelfRef.En);
    VL_ASSIGN_ISI(20,vlSelfRef.__Vcellinp__nco__FCW, vlSelfRef.FCW);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__nco__selSign, vlSelfRef.selSign);
    VL_ASSIGN_ISI(1,vlSelfRef.__Vcellinp__nco__selXY, vlSelfRef.selXY);
    VL_ASSIGN_SII(12,vlSelfRef.Dout, ((IData)(vlSelfRef.__Vcellinp__nco__selXY)
                                       ? (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xcalc)
                                       : (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Ycalc)));
}

void Vnco___024root___eval_triggers__ico(Vnco___024root* vlSelf);

bool Vnco___024root___eval_phase__ico(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_phase__ico\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vnco___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelfRef.__VicoTriggered.any();
    if (__VicoExecute) {
        Vnco___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vnco___024root___eval_act(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_act\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vnco___024root___nba_sequent__TOP__0(Vnco___024root* vlSelf);

void Vnco___024root___eval_nba(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_nba\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VnbaTriggered.word(0U))) {
        Vnco___024root___nba_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vnco___024root___nba_sequent__TOP__0(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___nba_sequent__TOP__0\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0;
    nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0 = 0;
    CData/*0:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0;
    nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 = 0;
    CData/*0:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0;
    nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 = 0;
    CData/*0:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0;
    nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 = 0;
    CData/*0:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0;
    nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 = 0;
    CData/*0:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0;
    nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 = 0;
    CData/*0:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0;
    nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 = 0;
    CData/*0:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0;
    nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 = 0;
    CData/*0:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0;
    nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 = 0;
    CData/*6:0*/ __Vdly__nco__DOT__u_pa__DOT__RdyCtl;
    __Vdly__nco__DOT__u_pa__DOT__RdyCtl = 0;
    IData/*19:0*/ __Vdly__nco__DOT__u_pa__DOT__acc_reg;
    __Vdly__nco__DOT__u_pa__DOT__acc_reg = 0;
    CData/*6:0*/ __Vdly__nco__DOT__u_ot__DOT__LoadCtl;
    __Vdly__nco__DOT__u_ot__DOT__LoadCtl = 0;
    CData/*6:0*/ __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl = 0;
    CData/*6:0*/ __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl = 0;
    CData/*6:0*/ __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl = 0;
    CData/*6:0*/ __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl = 0;
    CData/*6:0*/ __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl = 0;
    CData/*6:0*/ __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl = 0;
    CData/*6:0*/ __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl = 0;
    CData/*6:0*/ __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl = 0;
    // Body
    __Vdly__nco__DOT__u_pa__DOT__RdyCtl = vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl;
    __Vdly__nco__DOT__u_pa__DOT__acc_reg = vlSelfRef.nco__DOT__u_pa__DOT__acc_reg;
    __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl 
        = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__u_ot__DOT__LoadCtl = vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl 
        = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl 
        = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl 
        = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl 
        = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl 
        = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl 
        = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl;
    __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl 
        = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl;
    if (vlSelfRef.__Vcellinp__nco__En) {
        __Vdly__nco__DOT__u_pa__DOT__RdyCtl = ((0x7eU 
                                                & (IData)(__Vdly__nco__DOT__u_pa__DOT__RdyCtl)) 
                                               | (1U 
                                                  & ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl) 
                                                     >> 6U)));
        vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0 
            = (1U & (IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl));
        __Vdly__nco__DOT__u_pa__DOT__RdyCtl = ((0x7dU 
                                                & (IData)(__Vdly__nco__DOT__u_pa__DOT__RdyCtl)) 
                                               | ((IData)(vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0) 
                                                  << 1U));
        vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0 
            = (1U & ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl) 
                     >> 1U));
        __Vdly__nco__DOT__u_pa__DOT__RdyCtl = ((0x7bU 
                                                & (IData)(__Vdly__nco__DOT__u_pa__DOT__RdyCtl)) 
                                               | ((IData)(vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0) 
                                                  << 2U));
        vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0 
            = (1U & ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl) 
                     >> 2U));
        __Vdly__nco__DOT__u_pa__DOT__RdyCtl = ((0x77U 
                                                & (IData)(__Vdly__nco__DOT__u_pa__DOT__RdyCtl)) 
                                               | ((IData)(vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0) 
                                                  << 3U));
        vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0 
            = (1U & ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl) 
                     >> 3U));
        __Vdly__nco__DOT__u_pa__DOT__RdyCtl = ((0x6fU 
                                                & (IData)(__Vdly__nco__DOT__u_pa__DOT__RdyCtl)) 
                                               | ((IData)(vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0) 
                                                  << 4U));
        vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0 
            = (1U & ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl) 
                     >> 4U));
        __Vdly__nco__DOT__u_pa__DOT__RdyCtl = ((0x5fU 
                                                & (IData)(__Vdly__nco__DOT__u_pa__DOT__RdyCtl)) 
                                               | ((IData)(vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0) 
                                                  << 5U));
        vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0 
            = (1U & ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl) 
                     >> 5U));
        __Vdly__nco__DOT__u_pa__DOT__RdyCtl = ((0x3fU 
                                                & (IData)(__Vdly__nco__DOT__u_pa__DOT__RdyCtl)) 
                                               | ((IData)(vlSelfRef.nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0) 
                                                  << 6U));
        if ((0x40U & (IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl))) {
            __Vdly__nco__DOT__u_pa__DOT__acc_reg = 
                (0xfffffU & (vlSelfRef.nco__DOT__u_pa__DOT__acc_reg 
                             + vlSelfRef.__Vcellinp__nco__FCW));
            vlSelfRef.nco__DOT__u_pa__DOT__Atmp = (0xfffU 
                                                   & ((1U 
                                                       == 
                                                       (3U 
                                                        & (vlSelfRef.nco__DOT__u_pa__DOT__acc_reg 
                                                           >> 0x12U)))
                                                       ? 
                                                      (0xc00U 
                                                       | (0x3ffU 
                                                          & (vlSelfRef.nco__DOT__u_pa__DOT__acc_reg 
                                                             >> 8U)))
                                                       : 
                                                      ((2U 
                                                        == 
                                                        (3U 
                                                         & (vlSelfRef.nco__DOT__u_pa__DOT__acc_reg 
                                                            >> 0x12U)))
                                                        ? 
                                                       (0x3ffU 
                                                        & (vlSelfRef.nco__DOT__u_pa__DOT__acc_reg 
                                                           >> 8U))
                                                        : 
                                                       (vlSelfRef.nco__DOT__u_pa__DOT__acc_reg 
                                                        >> 8U))));
        }
    } else {
        __Vdly__nco__DOT__u_pa__DOT__RdyCtl = 0x20U;
        __Vdly__nco__DOT__u_pa__DOT__acc_reg = 0U;
        vlSelfRef.nco__DOT__u_pa__DOT__Atmp = 0U;
    }
    __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7eU & (IData)(__Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl)) 
           | (1U & ((IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl) 
                    >> 6U)));
    nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl));
    __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7dU & (IData)(__Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 1U));
    nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 1U));
    __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7bU & (IData)(__Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 2U));
    nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 2U));
    __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x77U & (IData)(__Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 3U));
    nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 3U));
    __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x6fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 4U));
    nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 4U));
    __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x5fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 5U));
    nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 5U));
    __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x3fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 6U));
    __Vdly__nco__DOT__u_ot__DOT__LoadCtl = ((0x7eU 
                                             & (IData)(__Vdly__nco__DOT__u_ot__DOT__LoadCtl)) 
                                            | (1U & 
                                               ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                                                >> 6U)));
    nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0 = 
        (1U & (IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl));
    __Vdly__nco__DOT__u_ot__DOT__LoadCtl = ((0x7dU 
                                             & (IData)(__Vdly__nco__DOT__u_ot__DOT__LoadCtl)) 
                                            | ((IData)(nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0) 
                                               << 1U));
    nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0 = 
        (1U & ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
               >> 1U));
    __Vdly__nco__DOT__u_ot__DOT__LoadCtl = ((0x7bU 
                                             & (IData)(__Vdly__nco__DOT__u_ot__DOT__LoadCtl)) 
                                            | ((IData)(nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0) 
                                               << 2U));
    nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0 = 
        (1U & ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
               >> 2U));
    __Vdly__nco__DOT__u_ot__DOT__LoadCtl = ((0x77U 
                                             & (IData)(__Vdly__nco__DOT__u_ot__DOT__LoadCtl)) 
                                            | ((IData)(nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0) 
                                               << 3U));
    nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0 = 
        (1U & ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
               >> 3U));
    __Vdly__nco__DOT__u_ot__DOT__LoadCtl = ((0x6fU 
                                             & (IData)(__Vdly__nco__DOT__u_ot__DOT__LoadCtl)) 
                                            | ((IData)(nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0) 
                                               << 4U));
    nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0 = 
        (1U & ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
               >> 4U));
    __Vdly__nco__DOT__u_ot__DOT__LoadCtl = ((0x5fU 
                                             & (IData)(__Vdly__nco__DOT__u_ot__DOT__LoadCtl)) 
                                            | ((IData)(nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0) 
                                               << 5U));
    nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0 = 
        (1U & ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
               >> 5U));
    __Vdly__nco__DOT__u_ot__DOT__LoadCtl = ((0x3fU 
                                             & (IData)(__Vdly__nco__DOT__u_ot__DOT__LoadCtl)) 
                                            | ((IData)(nco__DOT__u_ot__DOT____Vlvbound_hcb15fb04__0) 
                                               << 6U));
    __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7eU & (IData)(__Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl)) 
           | (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                    >> 6U)));
    nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl));
    __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7dU & (IData)(__Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 1U));
    nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 1U));
    __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7bU & (IData)(__Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 2U));
    nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 2U));
    __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x77U & (IData)(__Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 3U));
    nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 3U));
    __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x6fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 4U));
    nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 4U));
    __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x5fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 5U));
    nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 5U));
    __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x3fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 6U));
    __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7eU & (IData)(__Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl)) 
           | (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                    >> 6U)));
    nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl));
    __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7dU & (IData)(__Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 1U));
    nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 1U));
    __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7bU & (IData)(__Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 2U));
    nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 2U));
    __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x77U & (IData)(__Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 3U));
    nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 3U));
    __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x6fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 4U));
    nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 4U));
    __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x5fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 5U));
    nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 5U));
    __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x3fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 6U));
    __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7eU & (IData)(__Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl)) 
           | (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                    >> 6U)));
    nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl));
    __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7dU & (IData)(__Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 1U));
    nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 1U));
    __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7bU & (IData)(__Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 2U));
    nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 2U));
    __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x77U & (IData)(__Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 3U));
    nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 3U));
    __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x6fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 4U));
    nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 4U));
    __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x5fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 5U));
    nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 5U));
    __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x3fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 6U));
    __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7eU & (IData)(__Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl)) 
           | (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                    >> 6U)));
    nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl));
    __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7dU & (IData)(__Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 1U));
    nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 1U));
    __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7bU & (IData)(__Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 2U));
    nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 2U));
    __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x77U & (IData)(__Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 3U));
    nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 3U));
    __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x6fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 4U));
    nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 4U));
    __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x5fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 5U));
    nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 5U));
    __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x3fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 6U));
    __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7eU & (IData)(__Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl)) 
           | (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                    >> 6U)));
    nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl));
    __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7dU & (IData)(__Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 1U));
    nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 1U));
    __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7bU & (IData)(__Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 2U));
    nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 2U));
    __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x77U & (IData)(__Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 3U));
    nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 3U));
    __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x6fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 4U));
    nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 4U));
    __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x5fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 5U));
    nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 5U));
    __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x3fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 6U));
    __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7eU & (IData)(__Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl)) 
           | (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                    >> 6U)));
    nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl));
    __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7dU & (IData)(__Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 1U));
    nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 1U));
    __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7bU & (IData)(__Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 2U));
    nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 2U));
    __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x77U & (IData)(__Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 3U));
    nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 3U));
    __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x6fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 4U));
    nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 4U));
    __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x5fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 5U));
    nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 5U));
    __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x3fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 6U));
    __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7eU & (IData)(__Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl)) 
           | (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                    >> 6U)));
    nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl));
    __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7dU & (IData)(__Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 1U));
    nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 1U));
    __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x7bU & (IData)(__Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 2U));
    nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 2U));
    __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x77U & (IData)(__Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 3U));
    nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 3U));
    __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x6fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 4U));
    nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 4U));
    __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x5fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 5U));
    nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0 
        = (1U & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                 >> 5U));
    __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl 
        = ((0x3fU & (IData)(__Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl)) 
           | ((IData)(nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT____Vlvbound_hcb15fb04__0) 
              << 6U));
    if ((1U & (~ (IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl)))) {
        if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl))) {
                    vlSelfRef.nco__DOT__u_ot__DOT__Xin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_;
                    vlSelfRef.nco__DOT__u_ot__DOT__Yin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_;
                }
                if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
                              >> 3U)))) {
                    if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
                                  >> 4U)))) {
                        if ((0x20U & (IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl))) {
                            vlSelfRef.nco__DOT__u_ot__DOT__Xin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_;
                            vlSelfRef.nco__DOT__u_ot__DOT__Yin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_;
                        }
                    }
                    if ((0x10U & (IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl))) {
                        vlSelfRef.nco__DOT__u_ot__DOT__Yin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_;
                        vlSelfRef.nco__DOT__u_ot__DOT__Xin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_;
                    }
                }
            }
            if ((4U & (IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl))) {
                vlSelfRef.nco__DOT__u_ot__DOT__Yin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_;
                vlSelfRef.nco__DOT__u_ot__DOT__Xin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_;
            }
        }
        if ((2U & (IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl))) {
            vlSelfRef.nco__DOT__u_ot__DOT__Yin1 = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_;
            vlSelfRef.nco__DOT__u_ot__DOT__Xin1 = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_;
        }
    }
    if ((1U & (IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__u_ot__DOT__Xin0 = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_;
        vlSelfRef.nco__DOT__u_ot__DOT__Yin0 = vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_;
    }
    if ((1U & (~ (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl)))) {
        if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
            vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain1 
                = vlSelfRef.nco__DOT____Vcellout__u_pa__Aout;
        }
        if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
                vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain2 
                    = vlSelfRef.nco__DOT____Vcellout__u_pa__Aout;
            }
            if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
                    vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain3 
                        = vlSelfRef.nco__DOT____Vcellout__u_pa__Aout;
                }
                if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                              >> 3U)))) {
                    if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
                        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain4 
                            = vlSelfRef.nco__DOT____Vcellout__u_pa__Aout;
                    }
                    if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl) 
                                  >> 4U)))) {
                        if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
                            vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain5 
                                = vlSelfRef.nco__DOT____Vcellout__u_pa__Aout;
                        }
                    }
                }
            }
        }
    }
    if ((1U & (~ (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl)))) {
        if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
                vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_;
                vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_;
                vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_;
            }
            if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
                    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_;
                    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_;
                    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_;
                }
                if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                              >> 3U)))) {
                    if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl) 
                                  >> 4U)))) {
                        if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
                            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_;
                            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_;
                            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_;
                        }
                    }
                    if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
                        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_;
                        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_;
                        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_;
                    }
                }
            }
        }
        if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain1 
                = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_;
            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_;
            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_;
        }
    }
    if ((1U & (~ (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl)))) {
        if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
                vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_;
                vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_;
                vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_;
            }
            if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
                    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_;
                    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_;
                    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_;
                }
                if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                              >> 3U)))) {
                    if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl) 
                                  >> 4U)))) {
                        if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
                            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_;
                            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_;
                            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_;
                        }
                    }
                    if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
                        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_;
                        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_;
                        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_;
                    }
                }
            }
        }
        if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain1 
                = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_;
            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_;
            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_;
        }
    }
    if ((1U & (~ (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl)))) {
        if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
                vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_;
                vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_;
                vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_;
            }
            if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
                    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_;
                    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_;
                    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_;
                }
                if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                              >> 3U)))) {
                    if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl) 
                                  >> 4U)))) {
                        if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
                            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_;
                            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_;
                            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_;
                        }
                    }
                    if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
                        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_;
                        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_;
                        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_;
                    }
                }
            }
        }
        if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain1 
                = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_;
            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_;
            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_;
        }
    }
    if ((1U & (~ (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl)))) {
        if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
                vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_;
                vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_;
                vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_;
            }
            if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
                    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_;
                    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_;
                    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_;
                }
                if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                              >> 3U)))) {
                    if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl) 
                                  >> 4U)))) {
                        if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
                            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_;
                            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_;
                            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_;
                        }
                    }
                    if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
                        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_;
                        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_;
                        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_;
                    }
                }
            }
        }
        if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain1 
                = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_;
            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_;
            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_;
        }
    }
    if ((1U & (~ (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl)))) {
        if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
                vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_;
                vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_;
                vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_;
            }
            if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
                    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_;
                    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_;
                    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_;
                }
                if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                              >> 3U)))) {
                    if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl) 
                                  >> 4U)))) {
                        if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
                            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_;
                            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_;
                            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_;
                        }
                    }
                    if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
                        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_;
                        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_;
                        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_;
                    }
                }
            }
        }
        if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain1 
                = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_;
            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_;
            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_;
        }
    }
    if ((1U & (~ (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl)))) {
        if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
                vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_;
                vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_;
                vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_;
            }
            if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
                    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_;
                    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_;
                    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_;
                }
                if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                              >> 3U)))) {
                    if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl) 
                                  >> 4U)))) {
                        if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
                            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_;
                            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_;
                            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_;
                        }
                    }
                    if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
                        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_;
                        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_;
                        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_;
                    }
                }
            }
        }
        if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain1 
                = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_;
            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_;
            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_;
        }
    }
    if ((1U & (~ (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl)))) {
        if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                      >> 1U)))) {
            if ((4U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
                vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_;
                vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_;
                vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin2 
                    = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_;
            }
            if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                          >> 2U)))) {
                if ((8U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
                    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_;
                    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_;
                    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain3 
                        = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_;
                }
                if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                              >> 3U)))) {
                    if ((1U & (~ ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl) 
                                  >> 4U)))) {
                        if ((0x20U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
                            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_;
                            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_;
                            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain5 
                                = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_;
                        }
                    }
                    if ((0x10U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
                        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_;
                        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_;
                        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain4 
                            = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_;
                    }
                }
            }
        }
        if ((2U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain1 
                = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_;
            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_;
            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin1 
                = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_;
        }
    }
    if ((0x40U & (IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl))) {
        if (vlSelfRef.nco__DOT__u_ot__DOT__ISreg) {
            vlSelfRef.nco__DOT__u_ot__DOT__Xcalc = 
                (0xfffU & ((IData)(1U) + ((~ (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xin12b)) 
                                          + ((IData)(vlSelfRef.__Vcellinp__nco__selSign)
                                              ? 0x800U
                                              : 0U))));
            vlSelfRef.nco__DOT__u_ot__DOT__Ycalc = 
                (0xfffU & ((IData)(1U) + ((~ (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Yin12b)) 
                                          + ((IData)(vlSelfRef.__Vcellinp__nco__selSign)
                                              ? 0x800U
                                              : 0U))));
        } else {
            vlSelfRef.nco__DOT__u_ot__DOT__Xcalc = 
                (0xfffU & ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xin12b) 
                           + ((IData)(vlSelfRef.__Vcellinp__nco__selSign)
                               ? 0x800U : 0U)));
            vlSelfRef.nco__DOT__u_ot__DOT__Ycalc = 
                (0xfffU & ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__Yin12b) 
                           + ((IData)(vlSelfRef.__Vcellinp__nco__selSign)
                               ? 0x800U : 0U)));
        }
        vlSelfRef.nco__DOT__u_ot__DOT__ISreg = vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__7__KET____DOT__u_ce__ISout;
    }
    if ((0x40U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
        if ((0x800U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain12b))) {
            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin12b), 7U)));
            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin12b), 7U)));
        } else {
            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin12b), 7U)));
            vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin12b), 7U)));
        }
        vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__7__KET____DOT__u_ce__ISout 
            = vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__6__KET____DOT__u_ce__ISout;
    }
    if ((0x40U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
        if ((0x800U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain12b))) {
            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(9U) + (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain12b)));
            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin12b), 6U)));
            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin12b), 6U)));
        } else {
            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain12b) 
                             - (IData)(9U)));
            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin12b), 6U)));
            vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin12b), 6U)));
        }
        vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__6__KET____DOT__u_ce__ISout 
            = vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__5__KET____DOT__u_ce__ISout;
    }
    if ((0x40U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
        if ((0x800U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain12b))) {
            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(0x13U) + (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain12b)));
            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin12b), 5U)));
            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin12b), 5U)));
        } else {
            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain12b) 
                             - (IData)(0x13U)));
            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin12b), 5U)));
            vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin12b), 5U)));
        }
        vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__5__KET____DOT__u_ce__ISout 
            = vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__4__KET____DOT__u_ce__ISout;
    }
    if ((0x40U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
        if ((0x800U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain12b))) {
            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(0x28U) + (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain12b)));
            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin12b), 4U)));
            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin12b), 4U)));
        } else {
            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain12b) 
                             - (IData)(0x28U)));
            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin12b), 4U)));
            vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin12b), 4U)));
        }
        vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__4__KET____DOT__u_ce__ISout 
            = vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__3__KET____DOT__u_ce__ISout;
    }
    if ((0x40U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
        if ((0x800U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain12b))) {
            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(0x50U) + (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain12b)));
            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin12b), 3U)));
            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin12b), 3U)));
        } else {
            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain12b) 
                             - (IData)(0x50U)));
            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin12b), 3U)));
            vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin12b), 3U)));
        }
        vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__3__KET____DOT__u_ce__ISout 
            = vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__2__KET____DOT__u_ce__ISout;
    }
    if ((0x40U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
        if ((0x800U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain12b))) {
            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(0x9fU) + (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain12b)));
            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin12b), 2U)));
            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin12b), 2U)));
        } else {
            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain12b) 
                             - (IData)(0x9fU)));
            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin12b), 2U)));
            vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin12b), 2U)));
        }
        vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__2__KET____DOT__u_ce__ISout 
            = vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__1__KET____DOT__u_ce__ISout;
    }
    if ((0x40U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
        if ((0x800U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain12b))) {
            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(0x12dU) + (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain12b)));
            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin12b), 1U)));
            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin12b), 1U)));
        } else {
            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain12b) 
                             - (IData)(0x12dU)));
            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin12b) 
                             - VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin12b), 1U)));
            vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin12b) 
                             + VL_SHIFTRS_III(12,12,3, (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin12b), 1U)));
        }
        vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__1__KET____DOT__u_ce__ISout 
            = vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__0__KET____DOT__u_ce__ISout;
    }
    if ((0x40U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Xcalc = 0x4daU;
        if ((0x800U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain12b))) {
            vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc = 0xb26U;
            vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(0x1ffU) + (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain12b)));
        } else {
            vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc = 0x4daU;
            vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc 
                = (0xfffU & ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain12b) 
                             - (IData)(0x1ffU)));
        }
        vlSelfRef.nco__DOT____Vcellout__genblk1__BRA__0__KET____DOT__u_ce__ISout 
            = vlSelfRef.nco__DOT__is__BRA__0__KET__;
    }
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
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain0 
            = vlSelfRef.nco__DOT____Vcellout__u_pa__Aout;
    }
    vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain0))));
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_;
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain0 
            = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_;
        vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_;
    }
    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain0))));
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_;
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain0 
            = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_;
        vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_;
    }
    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain0))));
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_;
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain0 
            = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_;
        vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_;
    }
    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain0))));
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_;
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain0 
            = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_;
        vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_;
    }
    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain0))));
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_;
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain0 
            = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_;
        vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_;
    }
    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain0))));
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_;
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain0 
            = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_;
        vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_;
    }
    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain0))));
    if ((1U & (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl))) {
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_;
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain0 
            = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_;
        vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin0 
            = vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_;
    }
    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin0))));
    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain12b 
        = ((((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain5) 
             << 0xaU) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain4) 
                          << 8U) | ((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain3) 
                                    << 6U))) | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain2) 
                                                 << 4U) 
                                                | (((IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain1) 
                                                    << 2U) 
                                                   | (IData)(vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain0))));
    VL_ASSIGN_SII(12,vlSelfRef.Dout, ((IData)(vlSelfRef.__Vcellinp__nco__selXY)
                                       ? (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Xcalc)
                                       : (IData)(vlSelfRef.nco__DOT__u_ot__DOT__Ycalc)));
    vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl = __Vdly__nco__DOT__u_ot__DOT__LoadCtl;
    VL_ASSIGN_SII(1,vlSelfRef.Vld, (1U & ((IData)(vlSelfRef.nco__DOT__u_ot__DOT__LoadCtl) 
                                          >> 6U)));
    vlSelfRef.nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl 
        = __Vdly__nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl;
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
    vlSelfRef.nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl 
        = __Vdly__nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl;
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
    vlSelfRef.nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl 
        = __Vdly__nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl;
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
    vlSelfRef.nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl 
        = __Vdly__nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl;
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
    vlSelfRef.nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl 
        = __Vdly__nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl;
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
    vlSelfRef.nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl 
        = __Vdly__nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl;
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
    vlSelfRef.nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl 
        = __Vdly__nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl;
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
    vlSelfRef.nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl 
        = __Vdly__nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl;
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
    if ((0x20U & (IData)(vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl))) {
        vlSelfRef.nco__DOT__is__BRA__0__KET__ = (1U 
                                                 & VL_REDXOR_32(
                                                                (0xc0000U 
                                                                 & vlSelfRef.nco__DOT__u_pa__DOT__acc_reg)));
    }
    vlSelfRef.nco__DOT__u_pa__DOT__acc_reg = __Vdly__nco__DOT__u_pa__DOT__acc_reg;
    vlSelfRef.nco__DOT__u_pa__DOT__RdyCtl = __Vdly__nco__DOT__u_pa__DOT__RdyCtl;
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
}

void Vnco___024root___eval_triggers__act(Vnco___024root* vlSelf);

bool Vnco___024root___eval_phase__act(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_phase__act\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vnco___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vnco___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vnco___024root___eval_phase__nba(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_phase__nba\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vnco___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__ico(Vnco___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__nba(Vnco___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vnco___024root___dump_triggers__act(Vnco___024root* vlSelf);
#endif  // VL_DEBUG

void Vnco___024root___eval(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelfRef.__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY(((0x64U < __VicoIterCount)))) {
#ifdef VL_DEBUG
            Vnco___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("../rtl/nco.v", 1, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vnco___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelfRef.__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vnco___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("../rtl/nco.v", 1, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vnco___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("../rtl/nco.v", 1, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vnco___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vnco___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vnco___024root___eval_debug_assertions(Vnco___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vnco___024root___eval_debug_assertions\n"); );
    Vnco__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}
#endif  // VL_DEBUG
