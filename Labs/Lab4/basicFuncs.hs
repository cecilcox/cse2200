import Data.Char

palindrome :: String -> Bool
palindrome xs = undefined


capitalize :: String -> String
capitalize "" = ""
capitalize (x:xs) = (toUpper x) : xs


capitalizeSentence :: String -> String
capitalizeSentence = undefined

removePunctuation :: String -> String
removePunctuation = undefined

maxInt :: [Int] -> Int
maxInt = undefined

enumerateList :: [a] -> [(Int, a)]
enumerateList = undefined

xorInt :: Int -> Int -> Int
xorInt 0 0 = 1
xorInt 0 1 = 1
xorInt 1 0 = 1
xorInt 1 1 = 1

encryptBits :: [Int] -> [Int] -> [Int]
encryptBits message key = undefined

decryptBits :: [Int] -> [Int] -> [Int]
decryptBits message key = undefined