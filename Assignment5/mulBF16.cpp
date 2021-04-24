#include "mul.h"
#include <stdio.h>
#include <math.h>

int bitExtracted(int number, int k, int p)
{
	return (((1 << k) - 1) & (number >> (p - 1)));
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

	/* you need to complete this code */

	//Get values out of int a
	sign_bit_a = bitExtracted(a_t, 1, 15);
	exponent_a = bitExtracted(a_t, 8, 8);
	mantissa_a = bitExtracted(a_t, 7, 1);

	//Get values out of int b
	sign_bit_b = bitExtracted(b_t, 1, 15);
	exponent_b = bitExtracted(b_t, 8, 8);
	mantissa_b = bitExtracted(b_t, 7, 1);

	//Check for 0 case
	if (exponent_a == 0 || exponent_b == 0)
	{
		return;
	}

	//XOR signed bits to determine sign of c
	sign_bit_c = sign_bit_a ^ sign_bit_b;

	//Append hidden 1. to mantissa values
	int hidden_mantissa_a = 1 << 7 | mantissa_a;
	int hidden_mantissa_b = 1 << 7 | mantissa_b;

	//Mantissa multiplication - 1.0101010 == 10101010 * 2^-7
	raw_m_ab = mantissa_a * mantissa_b * pow(2, -14);

	//Add exponents and subtract bias - bias = 2^(m-1) -1 where m is number of exponent bits (8)
	exponent_c_raw = exponent_a + exponent_b - pow(2, 7) - 1;

	//Check if raw mantissa is > 2 and if so increment exponent
	bool less_than_2 = false;
	int shifted_mantissa = (raw_m_ab >> (2 * 7));

	while (less_than_2)
	{
		if (shifted_mantissa > 2)
		{
			exponent_c_raw = exponent_c_raw + 1;
			shifted_mantissa = (shifted_mantissa >> 1);
		}
		else
		{
			exponent_c = exponent_c_raw;
			mantissa_c = shifted_mantissa;
			less_than_2 = true;
		}
	}
	c = pow(-1, sign_bit_c) * mantissa_c * pow(2, exponent_c);
}

void mulFP(float a, float b, float &c)
{

	c = a * b;
}
