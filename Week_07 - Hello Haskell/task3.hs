main :: IO()
main = do
    print $ factRec 11 == 39916800
    print $ factIter 11 == 39916800
    print $ factXs 11 == 39916800


