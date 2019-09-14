-- Flip all bits
flipBits :: [Int] -> [Int]
flipBits [] = []
flipBits (0:xs) = 1:flipBits(xs)
flipBits (_:xs) = 0:flipBits(xs)

main = do
  let bits = replicate 32 0-- Immutable list of 32 bits (zeroes)
  let lim = 2^20
  print (iterate (flipBits) (bits) !! lim)
