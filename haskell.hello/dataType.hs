-- data Bool  = False | True

data Day = Day | Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving (Show, Eq, Ord, Enum, Read)


tomorrow :: Day -> Day
tomorrow Sun = Mon
tomorrow d = succ d

yesterday :: Day -> Day
yesterday Mon = Sun
yesterday d = pred d

type Name	= String
type Author	= String
type ISBN	= String
type Price	= Float

-- data Book = Book Name Author ISBN Price deriving (Show, Eq)

data Book = Book{
			name	:: Name,
			author 	:: Author,
			isbn	:: ISBN,
			price	:: Price
}

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

safeDiv :: Integral a => a -> a -> Maybe a
safeDiv a 0 = Nothing
safeDiv a b = Just (div a b)

disjoint :: [a] -> [b] -> [Either a b]
disjoint as bs =  map Left as ++ map Right bs

--[Left 80, Right "Cheated", Left 95, Right "Illness"]


-- either :: (a->c) -> (b->c) -> Either a b -> c
-- either f _ (Left x) = f x
-- either _ g (Right y) = g y

-- partitionEithers :: [Either a b] -> ([a], [bs])
-- partitionEithers = foldr (either left right) ([], [])
-- 					where
-- 						left a (l, r) = (a:l, r)
-- 						right a (l, r) = (l, a:r)


-- data (Num a) => Shape a = Rectangular a a
--
data List a = Nil | Cons a (List a) deriving (Eq,Show)

listToMylist Nil = []
listToMylist (Cons x xs) = x:(listToMylist xs)

mylistToList [] = Nil
mylistToList (x:xs) = Cons x (mylistToList xs)


data ThreeNum = One | Two | Three
data Level    = Low | Middle | High

f ::  ThreeNum -> Level
f One = Low
f Two = Middle
f Three = High

g :: Level -> ThreeNum
g Low = One
g Middle = Two

add a b = a + b

myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n-1) (tail xs)














