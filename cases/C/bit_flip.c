#include <math.h>
#include <stdint.h>
#include <stdio.h>

#define ARRAY_SIZE 32

typedef uint32_t u32;

typedef struct Element {
  u32 head;
  struct Element *tail;
} elem;

// Immutable list of 32 bits (zeroes)
elem bit_31 = {0, NULL};
elem bit_30 = {0, &bit_31};
elem bit_29 = {0, &bit_30};
elem bit_28 = {0, &bit_29};
elem bit_27 = {0, &bit_28};
elem bit_26 = {0, &bit_27};
elem bit_25 = {0, &bit_26};
elem bit_24 = {0, &bit_25};
elem bit_23 = {0, &bit_24};
elem bit_22 = {0, &bit_23};
elem bit_21 = {0, &bit_22};
elem bit_20 = {0, &bit_21};
elem bit_19 = {0, &bit_20};
elem bit_18 = {0, &bit_19};
elem bit_17 = {0, &bit_18};
elem bit_16 = {0, &bit_17};
elem bit_15 = {0, &bit_16};
elem bit_14 = {0, &bit_15};
elem bit_13 = {0, &bit_14};
elem bit_12 = {0, &bit_13};
elem bit_11 = {0, &bit_12};
elem bit_10 = {0, &bit_11};
elem bit_9 = {0, &bit_10};
elem bit_8 = {0, &bit_9};
elem bit_7 = {0, &bit_8};
elem bit_6 = {0, &bit_7};
elem bit_5 = {0, &bit_6};
elem bit_4 = {0, &bit_5};
elem bit_3 = {0, &bit_4};
elem bit_2 = {0, &bit_3};
elem bit_1 = {0, &bit_2};
elem bit_0 = {0, &bit_1};

// flip all bits
void flip(elem *bits) {
  if (bits->head == 0) {
    bits->head = 1;
  }
  else {
    bits->head = 0;
  }

  if (bits->tail != NULL) {
    flip(bits->tail);
  }
}

#ifdef DEBUG
u32 get_elem(u32 index, elem *bits) {
  if (index == 0) {
    return bits->head;
  }
  else {
    return get_elem(index-1, bits->tail);
  }
}

void print_bits(elem *bits) {
  printf("[");
  for(u32 i = 0; i < 31; i++) {
    printf("%d, ", get_elem(i, bits));
  }
  printf("%d]", get_elem(31, bits));
}
#endif

int main() {
  double i, lim = pow(2.0, 20.0);
  elem *bits = &bit_0;

  // Flip all bits 2^20 times
  for (i = 0.0; i < lim; i++) {
    flip(bits);

    #ifdef DEBUG
    print_bits(bits);
    printf("%f\n", i);
    #endif
  }
  #ifdef DEBUG
  printf("DONE!");
  #endif

  return 0;
}
