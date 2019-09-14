drop_a :: Integer -> [a] -> [a]
drop_a _ []     = []            -- extra
drop_a 0 (x:xs) = x:xs
drop_a n (x:xs) = drop_a (n-1) xs

rotate :: Integer -> [a] -> [a]
rotate _ [] = []
rotate n xs = zipWith const (drop_a n (cycle xs)) xs

exp_mod :: Integer -> Integer -> Integer -> Integer
exp_mod a x n =
    let
      -- Create an array from `0` til `N`
      array = [0..n-1]
      -- Compute `a ^ x`
      ax = a ^ x
    -- Rotate left the array `ax` times
    in head (rotate (ax) (array))

main = do
  print (exp_mod 3 20 13)
