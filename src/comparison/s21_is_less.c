#include "../s21_decimal.h"

int s21_is_less(s21_decimal dec1, s21_decimal dec2) {
  return (s21_is_greater(dec2, dec1));
}