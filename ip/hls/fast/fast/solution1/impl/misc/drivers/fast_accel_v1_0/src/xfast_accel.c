// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfast_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFast_accel_CfgInitialize(XFast_accel *InstancePtr, XFast_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFast_accel_Set_src_rows(XFast_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFast_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XFAST_ACCEL_AXILITES_ADDR_SRC_ROWS_DATA, Data);
}

u32 XFast_accel_Get_src_rows(XFast_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFast_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XFAST_ACCEL_AXILITES_ADDR_SRC_ROWS_DATA);
    return Data;
}

void XFast_accel_Set_src_cols(XFast_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFast_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XFAST_ACCEL_AXILITES_ADDR_SRC_COLS_DATA, Data);
}

u32 XFast_accel_Get_src_cols(XFast_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFast_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XFAST_ACCEL_AXILITES_ADDR_SRC_COLS_DATA);
    return Data;
}

void XFast_accel_Set_threshold(XFast_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFast_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XFAST_ACCEL_AXILITES_ADDR_THRESHOLD_DATA, Data);
}

u32 XFast_accel_Get_threshold(XFast_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFast_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XFAST_ACCEL_AXILITES_ADDR_THRESHOLD_DATA);
    return Data;
}

void XFast_accel_Set_unused(XFast_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFast_accel_WriteReg(InstancePtr->Axilites_BaseAddress, XFAST_ACCEL_AXILITES_ADDR_UNUSED_DATA, Data);
}

u32 XFast_accel_Get_unused(XFast_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFast_accel_ReadReg(InstancePtr->Axilites_BaseAddress, XFAST_ACCEL_AXILITES_ADDR_UNUSED_DATA);
    return Data;
}

