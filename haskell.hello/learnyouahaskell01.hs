doubleMe x = x + x

doubleUs x y = x*2 + y*2

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
         | x > maxTail = x
         | otherwise = maxTail
         where maxTail = maximum' xs

data Trafficlight = Red | Yellow | Green deriving (Show)

instance Eq Trafficlight where
    Red == Red = True
    Green == Green = True
    Yellow == Yellow = True
    _ == _ = False
