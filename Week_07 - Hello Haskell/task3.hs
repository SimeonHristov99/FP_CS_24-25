main :: IO()
main = do
    -- print $ factRec (-11)
    print $ factRec 11 == 39916800
    print $ factIter 11 == 39916800
    print $ factXs 11 == 39916800

factXs :: Int -> Int
factXs n = product [1 .. n]

factIter :: Int -> Int
factIter n
 | n < 0 = error "n has to be at least 0"
 | otherwise = helper n 1
  where
    helper :: Int -> Int -> Int
    helper 0 result = result
    helper leftover result = helper (leftover - 1) (result * leftover)

factRec :: Int -> Int
factRec 0 = 1
factRec n
 | n < 0 = error "n has to be at least 0"
 | otherwise = n * factRec (n - 1)
