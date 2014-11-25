
main :: IO()
main = putStrLn "Hello world!"

add a b = a + b

x = 10

myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n-1) (tail xs)
data BookInfo = Book Int String [String]
              deriving (Show)

data MagzineInfo = Magzine Int String [String]
                 deriving (Show)
myInfo = Book 9780135072455 "Algebra of Programming"
              ["Richard Bird", "Oege de Moor"]

type CustomerID = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID String

type BookRecord = (BookInfo, BookReview)

data Cartesian2D = Cartesian2D Double Double deriving (Eq, Show)
data Polar2D = Polar2D Double Double deriving (Eq, Show)

data Roygbiv = Red 
             | Orange
             | Yellow
             | Green
             | Blue
             | Infigo
             | Violet deriving (Eq, Show)

type Vector = (Double, Double)

data Shape = Circle Vector Double
           | Ploy [Vector] deriving (Show)

myNot True = False
myNot False = True

sumList (x:xs) = x + sumList xs
sumList [] = 0

third (a, b, c) = c

complicated (True, a, x:xs, 5) = (a, xs)

bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

nicerID      (Book id _     _ )       = id
nicerTitle   (Book _  title _ )       = title
nicerAuthors (Book _  _     authors ) = authors

isTwo :: Int -> Bool
isTwo n = if n == 2 then True else False

month :: Int -> Int
month = undefined

days :: (Int, Int) -> Int
days (m, d) = month m + d


let xxx = concat $ map
