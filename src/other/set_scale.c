#include "../s21_decimal.h"

void set_scale(s21_decimal *value, int scale) {
  int clearMask = ~(0xFF << 16);
  value->bits[3] &= clearMask;
  int mask = scale << 16;
  value->bits[3] |= mask;
}