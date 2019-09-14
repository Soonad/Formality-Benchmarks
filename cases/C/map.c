#include <stdint.h>
#include <math.h>

#ifdef DEBUG
#include <stdio.h>
#endif

#define ARR_SIZE 100

typedef uint32_t u32;

void inc_all(u32 *nums) {
  for (u32 i = 0; i < ARR_SIZE; i++) {
    nums[i] += 1;
  }
}

int main() {
  u32 nums[ARR_SIZE] = {0};
  double i, lim = pow(2.0, 20.0);
  for (i = 0.0; i < lim; i++) {
    inc_all(nums);
  }
  #ifdef DEBUG
  printf("%d\n", nums[67]); //print an arbitrary number to check correctness
  #endif
}
