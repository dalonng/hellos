

power2 :: Num a => [a] -> [a]
power2 [] = []
power2 (x:xs) = (x^2):power2 xs


-- let geopro n = last $ take n (iterate (*2) 1)


apply :: (a -> a) -> Int -> a -> a
apply f 0 x = x
apply f n x = apply f (n - 1) (f x)


geopro n = \n -> apply (*2) (n-1) 1

insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys) | x < y = x:y:ys
				| otherwise = y:insert x ys
				
isort :: Ord a => [a] -> [a]
isort xs = foldr insert [] xs			


skip :: Eq a => a -> [a] -> [a]
skip x [] = [x]
skip x (y:ys) | x == y = (y:ys)
			  | otherwise = x:y:ys

compress :: Eq a => [a] -> [a]
compress = foldr skip []

snoc :: Int -> [Int] -> [Int]
snoc x = foldr (:) [x]