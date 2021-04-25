// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmulbf16.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMulbf16_CfgInitialize(XMulbf16 *InstancePtr, XMulbf16_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMulbf16_Set_a(XMulbf16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulbf16_WriteReg(InstancePtr->Control_BaseAddress, XMULBF16_CONTROL_ADDR_A_DATA, Data);
}

u32 XMulbf16_Get_a(XMulbf16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulbf16_ReadReg(InstancePtr->Control_BaseAddress, XMULBF16_CONTROL_ADDR_A_DATA);
    return Data;
}

void XMulbf16_Set_b(XMulbf16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMulbf16_WriteReg(InstancePtr->Control_BaseAddress, XMULBF16_CONTROL_ADDR_B_DATA, Data);
}

u32 XMulbf16_Get_b(XMulbf16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulbf16_ReadReg(InstancePtr->Control_BaseAddress, XMULBF16_CONTROL_ADDR_B_DATA);
    return Data;
}

u32 XMulbf16_Get_c(XMulbf16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulbf16_ReadReg(InstancePtr->Control_BaseAddress, XMULBF16_CONTROL_ADDR_C_DATA);
    return Data;
}

u32 XMulbf16_Get_c_vld(XMulbf16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMulbf16_ReadReg(InstancePtr->Control_BaseAddress, XMULBF16_CONTROL_ADDR_C_CTRL);
    return Data & 0x1;
}

