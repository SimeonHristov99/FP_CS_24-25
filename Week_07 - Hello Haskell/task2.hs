main :: IO()
main = do
    print $ minIf 15 60 == 15
    print $ minIf 60 15 == 15
    print $ minIf (-60) (-15) == (-60)

    print $ minGuard 15 60 == 15
    print $ minGuard 60 15 == 15

    print $ minBuiltIn 60 15 == 15

    print $ lastDigit 154 == 4

    print $ quotientWhole 64 2 == 32

    print $ divWhole 154 17 == 9.058823529411764

    print $ removeLastDigit 154 == 15    

    print $ divReal 154.451 10.01 == 15.42967032967033

    print $ quotientReal 154.21 17.17 == 8

    print $ avgWhole 5 1542 == 773.5

    print $ roundTwoDig 3.1413465345321 == 3.14

    print $ roundTwoDigButWithMagic 3.1413465345321 == 3.14 -- partial function application and composition (defining a function on a functional level)

roundTwoDigButWithMagic :: Double -> Double
roundTwoDigButWithMagic = (/ 100) . fromIntegral . round . (* 100)

roundTwoDig :: Double -> Double
roundTwoDig n = (fromIntegral $ round $ n * 100) / 100

avgWhole :: Int -> Int -> Double
avgWhole x y = (/ 2) $ fromIntegral $ x + y -- (fromIntegral $ x + y) / 2

quotientReal :: Double -> Double -> Int
quotientReal n d = truncate $ n / d

divReal :: Double -> Double -> Double
divReal n d = n / d

removeLastDigit :: Int -> Int
removeLastDigit = (`div` 10)

divWhole :: Int -> Int -> Double
divWhole n d = fromIntegral n / fromIntegral d

quotientWhole :: Int -> Int -> Int
quotientWhole n d = div n d

lastDigit :: Int -> Int
lastDigit = (`mod` 10)
-- lastDigit n = n `mod` 10
-- lastDigit n = mod n 10

minBuiltIn :: Int -> Int -> Int
minBuiltIn x y = min x y

minGuard :: Int -> Int -> Int
minGuard x y
 | x < y = x
 | otherwise = y

minIf :: Int -> Int -> Int
minIf x y = if x < y then x else y
