#include <stdlib.h>
#include <iostream>
#include <verilated.h>
#include <verilated_vcd_c.h>
#include "VCount.h"
// #include "VCount___ALL.h"

#define MAX_SIM_TIME 1000
vluint64_t sim_time = 0;

int main(int argc, char** argv, char** env) {
    VCount *dut = new VCount;

    Verilated::traceEverOn(true);
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    dut->trace(m_trace, 5);
    m_trace->open("src/gtkwave/waveform.vcd");

    while (sim_time < MAX_SIM_TIME) {
        dut->clk ^= 1;
        dut->rst = 0;
        dut->hex = 1;

        // count up every 10 clock cycle
        dut->cycle = 50;

        // change segmentation select evert 2 clock cycle
        dut->segtiming = 1;
        dut->eval();
        m_trace->dump(sim_time);
        sim_time++;
    }

    m_trace->close();
    delete dut;
    exit(EXIT_SUCCESS);
}