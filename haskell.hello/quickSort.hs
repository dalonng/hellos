

-- quick sort

quickSort :: Ord a => [a] -> [a]
quickSort [x] = [x]
quickSort (x:xs) = quickSort mini ++ [x] ++ quickSort maxi
    where mini = filter (<x) xs
          maxi = filter (>=x) xs

filterSplit :: (a -> Bool) -> [a] -> ([a], [a])
filterSplit _ [] = ([], [])
filterSplit f (x:xs) | f x = ((x:l), r)
                     | otherwise = (l, (x:r))
                       where (l, r) = filterSplit f xs

    
quickSort' :: Ord a => [a] -> [a]
quickSort' [] = []
quickSort' [x] = [x]
quickSort' (x:xs) = quickSort' l ++ [x] ++ quickSort' r
                    where (l, r) = filterSplit (<x) xs
