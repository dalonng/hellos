
-- Binary search

search :: Ord a => a -> [a] -> Bool
search a [] = False
search a xs 
       | m < a = search a behind
       | m > a = search a front
       | otherwise = True
         where (front, m:behind) = splitAt (length xs `div` 2) xs

searchBinary :: Ord a => a -> [a] -> [a]
searchBinary a [] = []
searchBinary a xs 
    | m < a = searchBinary a behind
    | m > a = searchBinary a front
    | otherwise = a: ( searchBinary a behind ++ searchBinary a front)
         where (front, m:behind) = splitAt (length xs `div` 2) xs

-- Tower of Hanoi

h 1 = 1
h n = 2 * h (n-1) + 1

move :: (Int, Int, Int, Int) -> [(Int, Int)]
move (n, from, to, via) = move (n-1, from, via, to) ++ [(from, to)] ++ move (n-1, via, to, from)

hanoi n = move (n, 1, 2, 3)
