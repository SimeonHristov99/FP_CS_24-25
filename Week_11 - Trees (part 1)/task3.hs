import Data.Char
import Data.List

main :: IO()
main = do
    print $ minCalibrationValue ["1abc2", "pqrthreestu8vwx", "a1b2c3d4e5f", "trebsevenuchet"] == "1abc2"
    print $ minCalibrationValue ["has2ell", "rac5et"] == "has2ell"
    print $ minCalibrationValue ["jboktwoneaad", "agga20zs"] == "agga20zs"
    print $ minCalibrationValue ["jboktwoneaad", "agninega5zs"] == "jboktwoneaad"
    print $ minCalibrationValue ["1hhdz156qpfmmrb", "onetwo6ctkntf", "pfthree3oneninegzqpgxq2eight", "four99", "8bcr"] == "onetwo6ctkntf"
    print $ minCalibrationValue ["eight24five1", "k8two918hrnine", "948", "jnhldbh7dkskeight9", "np2"] == "np2"
    print $ minCalibrationValue ["rkmbh8", "five3xhpsdfkg94two3six", "bcstq5dghsfrcmftwo4lflbbrpztwo", "fiveightjdd4eight", "7mmvkgmq"] == "bcstq5dghsfrcmftwo4lflbbrpztwo"

formCalibrationValue :: [Int] -> Int
formCalibrationValue xs = read [intToDigit $ head xs, intToDigit $ last xs]

findNum :: String -> Int
findNum = formCalibrationValue . helper
 where
    helper :: String -> [Int]
    helper "" = []
    helper str@(s:ss)
     | isPrefixOf "one" str = 1 : helper ss
     | isPrefixOf "two" str = 2 : helper ss
     | isPrefixOf "three" str = 3 : helper ss
     | isPrefixOf "four" str = 4 : helper ss
     | isPrefixOf "five" str = 5 : helper ss
     | isPrefixOf "six" str = 6 : helper ss
     | isPrefixOf "seven" str = 7 : helper ss
     | isPrefixOf "eight" str = 8 : helper ss
     | isPrefixOf "nine" str = 9 : helper ss
     | isDigit s = digitToInt s : helper ss
     | otherwise = helper ss

minCalibrationValue :: [String] -> String
minCalibrationValue = foldl1 (\ s1 s2 -> if findNum s1 < findNum s2 then s1 else s2)
