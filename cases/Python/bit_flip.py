# Flip all bits
def flip(bits):
    if (len(bits) > 0):
      if (bits[0] == 0):
        return [1, flip(bits[1])]
      else:
        return [0, flip(bits[1])]
    else:
      return []

def main():
  
  # Immutable list of 32 bits (zeroes)
  bits = [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0, [0,[]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]];

  lim = 2**20
  for i in range(lim):
    bits = flip(bits)
    #print(bits)

main()
