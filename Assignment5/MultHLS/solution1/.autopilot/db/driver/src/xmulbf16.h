// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMULBF16_H
#define XMULBF16_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmulbf16_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XMulbf16_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMulbf16;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMulbf16_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMulbf16_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMulbf16_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMulbf16_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMulbf16_Initialize(XMulbf16 *InstancePtr, u16 DeviceId);
XMulbf16_Config* XMulbf16_LookupConfig(u16 DeviceId);
int XMulbf16_CfgInitialize(XMulbf16 *InstancePtr, XMulbf16_Config *ConfigPtr);
#else
int XMulbf16_Initialize(XMulbf16 *InstancePtr, const char* InstanceName);
int XMulbf16_Release(XMulbf16 *InstancePtr);
#endif


void XMulbf16_Set_a(XMulbf16 *InstancePtr, u32 Data);
u32 XMulbf16_Get_a(XMulbf16 *InstancePtr);
void XMulbf16_Set_b(XMulbf16 *InstancePtr, u32 Data);
u32 XMulbf16_Get_b(XMulbf16 *InstancePtr);
u32 XMulbf16_Get_c(XMulbf16 *InstancePtr);
u32 XMulbf16_Get_c_vld(XMulbf16 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
