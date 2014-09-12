-- Insertion Sort

insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys) | x < y = x:y:ys
				| otherwise = y:insert x ys

insertionSort :: Ord a 	=> [a] -> [a] -> [a]
insertionSort xs []		= xs
insertionSort xs (y:ys)	= insertionSort (insert y xs) ys


-- main = insertionSort [] [9,6,7,8,4,3,5,1,2]

insertionSort' :: Ord a => [a] -> [a]
insertionSort' [] = []
insertionSort' (x:xs) = inert x $ insertionSort' xs