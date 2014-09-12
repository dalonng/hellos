import Data.List

-- f, g, h :: Num a => a -> a
-- f x = 4 * x + 1
-- g x = x ^ 2 + 1
-- h x = f $ g x

elemX, notElemX :: Eq a => a -> [a]
elemX	= any . (==)
notElemX = all . (/=)