#include <stdint.h>
#include <math.h>
#include <stdio.h>

typedef uint32_t u32;

u32 exp_mod(double a, double x, u32 mod) {
  // Create an array from `0` til `N`
  u32 arr[mod];
  for (u32 i = 0; i < mod; i++) {
    arr[i] = i;
  }

  // Compute `a ^ x`
  double ax = pow(a, x);

  // Rotate left the array `ax` times
  for (u32 i = 0; i < ax; i++) {
    u32 first = arr[0];
    for (u32 j = 0; j < mod-1; j++) {
      arr[j] = arr[j + 1];
    }
    arr[mod-1] = first;
  }

  // Return the first element
  return arr[0];
}

int main() {
  printf("%d\n", exp_mod(3.0, 20.0, 13));
}
