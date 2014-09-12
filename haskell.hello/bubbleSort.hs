swaps :: Ord a => [a] -> [a]
swaps [] = []
swaps [x] = [x]
swaps (x1:x2:xs)	| x1 < x2  = x1: swaps (x2:xs)
					| otherwise = x2: swaps (x1:xs)
					
fix :: Eq a => (a -> a) -> a -> a
fix f x = if x == x' then x else fix f x'
			where x' = f x
			
bubbleSort :: Ord a => [a] -> [a]
bubbleSort []	= []
bubbleSort x	= fix swaps x

bubbleSort' :: Ord a => [a] -> [a]
bubbleSort' []	= []
bubbleSort' xs	| swaps xs == xs = xs
				| otherwise  = bubbleSort' $ swaps xs

bubbleSort'' :: Ord a => [a] -> [a]
bubbleSort'' []	= []
bubbleSort'' xs	= bubbleSort'' initialElements ++ [lastElement]
				where swapedxs = swaps xs;
					initialElements = init swapedxs;
					lastElement = last swapedxs;