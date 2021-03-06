
positions 0 n = [[]]
positions k n = [x:ns | x <- [1..n], ns <- positions (k-1) n ]


noSameRow [] = True
noSameRow (x:xs) = (not $ elem x xs) && noSameRow xs

noSameDiag []= True
noSameDiag xs@(x:xs') = and [abs (i1-i)/= abs (p1-p) | (i,p) <- ip] && noSameDiag xs'
						where (i1, p1):ip = zip [1..] xs
						
queen n = [ xs | xs <- positions n n, noSameRow xs, noSameDiag xs]

isSafe p ps = not ((elem p ps) || (sameDiag p ps))
				where sameDiag p ps = any (\(dist, q) -> abs (p-q) == dist) $ zip [1..] ps

positions' 0 n = [[]]
positions' k n = [p:ps| ps<-positions' (k-1) n, p <- [1..n], isSafe p ps]

queens = positions' 8 8 


insert :: a -> [a] -> [[a]]
insert n [] = [[n]]
insert n (n':ns) = (n:n':ns):[n':ns'| ns' <- insert n ns]

permutation :: [a] -> [[a]]
permutation [] = [[]]
permutation (x:xs) = concat [insert x permux | permux <- permutation xs]

queen' :: Int -> [[Int]]
queen' n = [xs| xs<-permutation [1..n], noSameDiag xs]