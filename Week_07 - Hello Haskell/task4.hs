main :: IO()
main = do
    print $ fibRec 11 == 89

    print $ fibIter 11 == 89
    print $ fibIter 110 == 43566776258854844738105


