main :: IO()
main = do
    print $ (findUniques db) 4  == ["SICP","Real World Haskell"]
    print $ (findUniques db) 8  == ["Real World Haskell"]
    print $ (findUniques db) 32 == []

db = [("SICP",1996),("Learn You a Haskell for Great Good",2011),("Real World Haskell",2008),("Programming in Haskell",2011)]

findUniques :: [(String, Int)] -> (Int -> [String])
findUniques books =
    (\ n -> map fst $ filter (\ book@(name, year) -> noOtherBooksInYear book && length name >= n) books)
 where
    noOtherBooksInYear :: (String, Int) -> Bool
    noOtherBooksInYear book@(name, year) = length getBooksInYear == 1 && elem book getBooksInYear
     where
        getBooksInYear = [b | b@(_, y) <- books, y == year]
