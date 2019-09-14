import Data.List

nums = replicate 100 0
lim = 2^20
result = iterate (map (+1)) nums !! lim

--main = print result
main = do
    return result
