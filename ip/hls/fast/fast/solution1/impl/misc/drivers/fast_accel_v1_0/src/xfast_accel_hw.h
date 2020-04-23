// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of src_rows
//        bit 31~0 - src_rows[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of src_cols
//        bit 31~0 - src_cols[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of threshold
//        bit 31~0 - threshold[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of unused
//        bit 31~0 - unused[31:0] (Read/Write)
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFAST_ACCEL_AXILITES_ADDR_SRC_ROWS_DATA  0x10
#define XFAST_ACCEL_AXILITES_BITS_SRC_ROWS_DATA  32
#define XFAST_ACCEL_AXILITES_ADDR_SRC_COLS_DATA  0x18
#define XFAST_ACCEL_AXILITES_BITS_SRC_COLS_DATA  32
#define XFAST_ACCEL_AXILITES_ADDR_THRESHOLD_DATA 0x20
#define XFAST_ACCEL_AXILITES_BITS_THRESHOLD_DATA 32
#define XFAST_ACCEL_AXILITES_ADDR_UNUSED_DATA    0x28
#define XFAST_ACCEL_AXILITES_BITS_UNUSED_DATA    32

