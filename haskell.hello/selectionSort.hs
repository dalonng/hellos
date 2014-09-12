
delete :: Eq a => a -> [a] -> [a]
delete _ [] = []
delete x (l:ls)	| x == l = ls
				| otherwise = l: delete x ls
				
				
selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []				
selectionSort xs = mini : selectionSort xs'
				where mini = minimum xs;
					  xs' = delete mini xs;	