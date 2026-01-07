// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vnco.h for the primary calling header

#ifndef VERILATED_VNCO___024ROOT_H_
#define VERILATED_VNCO___024ROOT_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"


class Vnco__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vnco___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ __Vcellinp__nco__clk;
        CData/*0:0*/ __Vcellinp__nco__selSign;
        CData/*0:0*/ __Vcellinp__nco__selXY;
        CData/*0:0*/ __Vcellinp__nco__En;
        CData/*0:0*/ nco__DOT__is__BRA__0__KET__;
        CData/*1:0*/ nco__DOT____Vcellout__u_pa__Aout;
        CData/*0:0*/ nco__DOT____Vcellout__genblk1__BRA__0__KET____DOT__u_ce__ISout;
        CData/*0:0*/ nco__DOT____Vcellout__genblk1__BRA__1__KET____DOT__u_ce__ISout;
        CData/*0:0*/ nco__DOT____Vcellout__genblk1__BRA__2__KET____DOT__u_ce__ISout;
        CData/*0:0*/ nco__DOT____Vcellout__genblk1__BRA__3__KET____DOT__u_ce__ISout;
        CData/*0:0*/ nco__DOT____Vcellout__genblk1__BRA__4__KET____DOT__u_ce__ISout;
        CData/*0:0*/ nco__DOT____Vcellout__genblk1__BRA__5__KET____DOT__u_ce__ISout;
        CData/*0:0*/ nco__DOT____Vcellout__genblk1__BRA__6__KET____DOT__u_ce__ISout;
        CData/*0:0*/ nco__DOT____Vcellout__genblk1__BRA__7__KET____DOT__u_ce__ISout;
        CData/*6:0*/ nco__DOT__u_pa__DOT__RdyCtl;
        CData/*0:0*/ nco__DOT__u_pa__DOT____Vlvbound_h90e56107__0;
        CData/*6:0*/ nco__DOT__u_ot__DOT__LoadCtl;
        CData/*0:0*/ nco__DOT__u_ot__DOT__ISreg;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Xin5;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Xin4;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Xin3;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Xin2;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Xin1;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Xin0;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Yin5;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Yin4;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Yin3;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Yin2;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Yin1;
        CData/*1:0*/ nco__DOT__u_ot__DOT__Yin0;
        CData/*6:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__LoadCtl;
        CData/*1:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__X_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Y_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__A_;
        CData/*6:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__LoadCtl;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__X_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Y_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__A_;
        CData/*6:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__LoadCtl;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin5;
    };
    struct {
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__X_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Y_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__A_;
        CData/*6:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__LoadCtl;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__X_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Y_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__A_;
        CData/*6:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__LoadCtl;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__X_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Y_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__A_;
    };
    struct {
        CData/*6:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__LoadCtl;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__X_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Y_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__A_;
        CData/*6:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__LoadCtl;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__X_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Y_;
        CData/*1:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__A_;
        CData/*6:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__LoadCtl;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain5;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain4;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain3;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain2;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain1;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain0;
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__X_;
    };
    struct {
        CData/*1:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Y_;
        CData/*0:0*/ __VstlFirstIteration;
        CData/*0:0*/ __VicoFirstIteration;
        CData/*0:0*/ __Vtrigprevexpr___TOP____Vcellinp__nco__clk__0;
        CData/*0:0*/ __VactContinue;
        SData/*11:0*/ nco__DOT__u_pa__DOT__Atmp;
        SData/*11:0*/ nco__DOT__u_ot__DOT__Xin12b;
        SData/*11:0*/ nco__DOT__u_ot__DOT__Yin12b;
        SData/*11:0*/ nco__DOT__u_ot__DOT__Xcalc;
        SData/*11:0*/ nco__DOT__u_ot__DOT__Ycalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ain12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Xcalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Ycalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__0__KET____DOT__u_ce__DOT__Acalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Yin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ain12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Xcalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Ycalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__1__KET____DOT__u_ce__DOT__Acalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Yin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ain12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Xcalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Ycalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__2__KET____DOT__u_ce__DOT__Acalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Yin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ain12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Xcalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Ycalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__3__KET____DOT__u_ce__DOT__Acalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Yin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ain12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Xcalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Ycalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__4__KET____DOT__u_ce__DOT__Acalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Yin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ain12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Xcalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Ycalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__5__KET____DOT__u_ce__DOT__Acalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Yin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ain12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Xcalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Ycalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__6__KET____DOT__u_ce__DOT__Acalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Yin12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ain12b;
        SData/*11:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Xcalc;
        SData/*11:0*/ nco__DOT__genblk1__BRA__7__KET____DOT__u_ce__DOT__Ycalc;
        IData/*19:0*/ __Vcellinp__nco__FCW;
        IData/*19:0*/ nco__DOT__u_pa__DOT__acc_reg;
        IData/*31:0*/ __VactIterCount;
    };
    sc_core::sc_in<bool> clk;
    sc_core::sc_in<bool> En;
    sc_core::sc_in<bool> selXY;
    sc_core::sc_in<bool> selSign;
    sc_core::sc_out<bool> Vld;
    sc_core::sc_out<uint32_t> Dout;
    sc_core::sc_in<uint32_t> FCW;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vnco__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vnco___024root(Vnco__Syms* symsp, const char* v__name);
    ~Vnco___024root();
    VL_UNCOPYABLE(Vnco___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
