import Data.Char

main :: IO()
main = do
    print $ reversibleNumbers 20 == [12,14,16,18]
    print $ reversibleNumbers 31 == [12,14,16,18,21,23,25,27]
    print $ reversibleNumbers 10 == []

reverseNumber :: Int -> Int
reverseNumber = read . reverse . show

isReversible :: Int -> Bool
isReversible n = all odd $ map digitToInt $ show $ n + reverseNumber n

reversibleNumbers :: Int -> [Int]
reversibleNumbers n = filter (\ x -> mod x 10 /= 0 && isReversible x) [1 .. n]
