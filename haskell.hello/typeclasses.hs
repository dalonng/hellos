

data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

--data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)


surface :: Shape -> Float
surface (Circle _  r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) r) a b = Circle (Point (x+a) (y+b)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b = Rectangle (Point (x1 + a) (y1+b)) (Point (x2+a) (y2+b))


baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0 ) r

baseRect :: Float -> Float -> Shape
baseRect width height = Rectangle (Point 0 0 ) (Point width height)


data Persion = Persion { firstName :: String
                       , lastName :: String
                       , age :: Int
                       , height :: Float
                       , phoneNumber :: String
                       , flavor :: String
}deriving (Show)

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
           | x == a = Node x left right
           | x < a  = Node a (treeInsert x left) right
           | x > a  = Node a left (treeInsert x right)

treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
           | x == a = True
           | x < a  = treeElem x left
           | x > a  = treeElem x right

