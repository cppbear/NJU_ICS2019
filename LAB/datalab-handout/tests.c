/* Testing Code */

#include <limits.h>
#include <math.h>

/* Routines used by floation point test code */

/* Convert from bit level representation to floating point number */
float u2f(unsigned u) {
  union {
    unsigned u;
    float f;
  } a;
  a.u = u;
  return a.f;
}

/* Convert from floating point number to bit-level representation */
unsigned f2u(float f) {
  union {
    unsigned u;
    float f;
  } a;
  a.f = f;
  return a.u;
}

/* Copyright (C) 1991-2018 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
int test_isEqual(int x, int y)
{
  return x == y;
}
int test_anyOddBit(int x) {
    int i;
    for (i = 1; i < 32; i+=2)
        if (x & (1<<i))
      return 1;
    return 0;
}
int test_isGreater(int x, int y)
{
  return x > y;
}
int test_replaceByte(int x, int n, int c)
{
    switch(n) {
    case 0:
      x = (x & 0xFFFFFF00) | c;
      break;
    case 1:
      x = (x & 0xFFFF00FF) | (c << 8);
      break;
    case 2:
      x = (x & 0xFF00FFFF) | (c << 16);
      break;
    default:
      x = (x & 0x00FFFFFF) | (c << 24);
      break;
    }
    return x;
}
int test_isZero(int x) {
  return x == 0;
}
int test_howManyBits(int x) {
    unsigned int a, cnt;
    x = x<0 ? -x-1 : x;
    a = (unsigned int)x;
    for (cnt=0; a; a>>=1, cnt++)
        ;
    return (int)(cnt + 1);
}
int test_float_f2i(unsigned uf) {
  float f = u2f(uf);
  int x = (int) f;
  return x;
}
int test_reverseBytes(int x)
{
    unsigned char byte0 = (x >> 0);
    unsigned char byte1 = (x >> 8);
    unsigned char byte2 = (x >> 16);
    unsigned char byte3 = (x >> 24);
    unsigned result = (byte0<<24)|(byte1<<16)|(byte2<<8)|(byte3<<0);
    return result;
}
int test_negate(int x) {
  return -x;
}
int test_bitOr(int x, int y)
{
  return x|y;
}
int test_leftBitCount(int x) {
  int result = 0;
  int i;
  for (i = 31; i >= 0; i--) {
      int bit = (x >> i) & 0x1;
      if (!bit)
   break;
      result ++;
  }
  return result;
}
unsigned test_float_twice(unsigned uf) {
  float f = u2f(uf);
  float tf = 2*f;
  if (isnan(f))
    return uf;
  else
    return f2u(tf);
}
