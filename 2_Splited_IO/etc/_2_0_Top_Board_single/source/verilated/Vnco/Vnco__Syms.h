// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VNCO__SYMS_H_
#define VERILATED_VNCO__SYMS_H_  // guard

#include "systemc"
#include "verilated_sc.h"
#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vnco.h"

// INCLUDE MODULE CLASSES
#include "Vnco___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vnco__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vnco* const __Vm_modelp;
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vnco___024root                 TOP;

    // CONSTRUCTORS
    Vnco__Syms(VerilatedContext* contextp, const char* namep, Vnco* modelp);
    ~Vnco__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
