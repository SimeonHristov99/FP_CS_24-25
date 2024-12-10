import Data.List

main :: IO()
main = do
    print $ canSplitWord t1 "BDCGI"  == True
    print $ canSplitWord t1 "BDGI"   == True
    print $ canSplitWord t1 "BDCGIH" == True
    print $ canSplitWord t1 "BGIH"   == False
    print $ canSplitWord t1 "BCDGI"  == False
    print $ canSplitWord t1 "BDGH"   == False

data BTree = Nil | Node Char BTree BTree
 deriving (Show, Eq)

t1 = Node 'F' (Node 'B' (Node 'A' Nil Nil) (Node 'D' (Node 'C' Nil Nil) (Node 'E' Nil Nil))) (Node 'G' Nil (Node 'I' (Node 'H' Nil Nil) Nil))

generateSplits :: String -> [(String, String)]
generateSplits input
 | length input < 4 = error $ "Expected string with at least 4 characters. Got " ++ input
 | otherwise = [splitAt splitIdx input | splitIdx <- [2 .. length input - 2]]

canRead :: String -> BTree -> Bool
canRead "" Nil = True
canRead word@(s:ss) t@(Node value left right)
 | s == value = helper word t
 | otherwise = canRead word left || canRead word right
  where
    helper "" _ = True
    helper (s:ss) (Node value left right) = s == value && (helper ss left || helper ss right)
    helper _ _ = False
canRead _ _ = False

canSplitWord :: BTree -> String -> Bool
canSplitWord (Node _ left right) =
    any (\ (partLeft, partRight) -> canRead partLeft left && canRead partRight right) . generateSplits
