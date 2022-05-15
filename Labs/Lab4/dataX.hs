--Provide a type signature for emptyList. Is this the most general type?
emptyList = []

empty :: [a] -> Bool
empty [] = True
empty (x:xs) = False

headX :: [a] -> a
headX (x:xs) = x

tailX :: [a] -> [a]
tailX (x:xs) = xs

splitAtX :: Int -> [a] -> ([a],[a])
splitAtX = undefined

addMaybe :: Maybe Int -> Maybe Int -> Maybe Int

--data Stack a = Stack ? ? 


