q1 [] = []
q1 (x:xs) = q1 ls ++ [x] ++ q1 rs
            where ls = filter (< x) xs
                  rs = filter (> x) xs

data Q2 = Q2 Int Int
  deriving Show
instance Num Q2 where
  (Q2 a b) + (Q2 c d) = Q2 (a * d + c * b ) (b * d)
  (Q2 a b) * (Q2 c d) = Q2 (a * c) (b * d)
  negate (Q2 a b) = Q2 (negate a) b
  abs (Q2 a b) = Q2 (abs a) (abs b)
  signum (Q2 a b) = Q2 (signum (a * b)) 1
  fromInteger n = Q2 (fromInteger n) 1
instance Eq Q2 where
  (Q2 a b ) == (Q2 c d) = (a `div` b == c `div` d) && (a `mod` b == c `mod` d)

q3 = \a -> \b -> \c -> if null c then b else q3 a (a b (head c)) (tail c)


q4  = 34 : 55 : zipWith (+) q4 (tail q4)

q5 a b | b == 0 = 1
       | even b = q5 (a*a) (b `div` 2)
       | otherwise = a * q5 a (b-1)

