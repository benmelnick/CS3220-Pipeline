// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmulbf16.h"

extern XMulbf16_Config XMulbf16_ConfigTable[];

XMulbf16_Config *XMulbf16_LookupConfig(u16 DeviceId) {
	XMulbf16_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMULBF16_NUM_INSTANCES; Index++) {
		if (XMulbf16_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMulbf16_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMulbf16_Initialize(XMulbf16 *InstancePtr, u16 DeviceId) {
	XMulbf16_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMulbf16_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMulbf16_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

