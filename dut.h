#pragma once

#include <ap_int.h>
#include <hls_stream.h>

typedef ap_uint<32> bus_t;

void dut(hls::stream<bus_t> & strm_in, hls::stream<bus_t> & strm_out);
