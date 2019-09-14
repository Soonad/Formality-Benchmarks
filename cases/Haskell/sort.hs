import Data.List

sort_test :: Int -> [Int] -> [Int]
sort_test x a = iterate (sort) (a) !! x

main = do
  let lim = 2^22
  print (sort_test (lim) ([15, 30, 29, 28, 10, 26, 25, 24, 23, 22, 21, 4, 19, 18, 17, 16, 31, 14, 13, 12, 11, 27, 9, 8, 7, 6, 5, 20, 3, 2, 1, 0]))
