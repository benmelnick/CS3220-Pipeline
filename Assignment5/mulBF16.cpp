#include "mul.h"
#include <stdio.h>
#include <math.h>

// 16 bit floating point multiplication
// first 7 bits are mantissa
// next 8 bits are exponent
// MSB is sign bit

// [S (1) |      Exp (8)     |    Mantissa (7)  ] //

int sign_bit(int number) {
  return number >> 15;
}

int exp_bits(int number) {
  return (number & 0x7F80) >> (TOTAL_BITS - E_BITS - 1); 
}

int mantissa_bits(int number) {
  return number & 0x7F;
}

void mulBF16(int a, int b, int &c)
{

#pragma HLS INTERFACE ap_ctrl_none port = return
#pragma HLS INTERFACE s_axilite port = a
#pragma HLS INTERFACE s_axilite port = b
#pragma HLS INTERFACE s_axilite port = c

  int a_t, b_t, c_t;
  int exponent_a, exponent_b, exponent_c, exponent_c_raw;
  int mantissa_a, mantissa_b, mantissa_c, raw_m_ab;
  int sign_bit_a, sign_bit_b, sign_bit_c;

	a_t = a;
	b_t = b;

  // Get values out of int a
  sign_bit_a = sign_bit(a_t);
  exponent_a = exp_bits(a_t);
  mantissa_a = mantissa_bits(a_t) | MANT_HIDDEN_BIT; // add the hidden bit

  // Get values out of int b
  sign_bit_b = sign_bit(b_t);
  exponent_b = exp_bits(b_t);
  mantissa_b = mantissa_bits(b_t) | MANT_HIDDEN_BIT; // add the hidden bit

  // Check for 0 case
  if (exponent_a == 0 || exponent_b == 0) {
    return;
  }

  // Check for infinity/NaN
  if (exponent_a == 0xFF || exponent_b == 0xFF) {
    return;
  }

	// 1: XOR signed bits to determine sign of c
	sign_bit_c = sign_bit_a ^ sign_bit_b;

  // 2: exponent = e1 + e2 - bias
  // bias = 2^(e-1) - 1, where e is the number of exponent bits
  int bias = pow(2, E_BITS - 1) - 1; 
  exponent_c_raw = exponent_a + exponent_b - bias;

  // 3: multyply mantissa values, including the hidden "1." at the beginning of each
  // multiplying two 8 bit numbers should create a 16 bit number
  raw_m_ab = mantissa_a * mantissa_b;
  // normalize the result - need to right shift 16 bit int to fit into a 7 bit int
  // check if MSB (bit 15) is set to 1
  if (raw_m_ab & 0x8000) {
    mantissa_c = raw_m_ab >> 8;
    exponent_c = exponent_c_raw + 1;
  } else {
    mantissa_c = raw_m_ab >> 7;
    exponent_c = exponent_c_raw;
  }
  // remove the hidden bit
  mantissa_c = mantissa_c & ~MANT_HIDDEN_BIT;

  // construct the result
  c = (sign_bit_c << 15) | (exponent_c << (TOTAL_BITS - E_BITS - 1)) | mantissa_c;
}

void mulFP(float a, float b, float &c)
{
	c = a * b;
}
