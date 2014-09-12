ones = 1:ones

nature = 0: map (+1) nature
fibs = (0:1:zipWith (+) fibs (tail fibs))

-- ham = 1:map (*2) (tail ham) ++ map (*3) (tail ham) ++ map (*5) (tail ham)


merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x < y = x:merge xs (y:ys)
					| x > y = y:merge (x:xs) ys
					| x == y = x:merge xs ys
					
					
ham = 1:merge (merge (map (*2) ham) (map (*3) ham )) (map (*5) ham)						