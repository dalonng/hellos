import Data.List

solveRPN :: (Num a, Read a ) => String -> a
solveRPN = head . foldl foldingFunction [] . words
    where foldingFunction (x:y:ys) "*" = (x * y):ys
          foldingFunction (x:y:ys) "+" = (x + y):ys
          foldingFunction (x:y:ys) "-" = (y - x):ys
          foldingFunction xs numberString = read numberString:xs

data Node = Node Road Road | EndNode Road
data Road = Road Int Node

data Section = Section {
      getA :: Int,
      getB :: Int,
      getC :: Int } deriving (Show)

type RoadSystem = [Section]

heathrowToLondon :: RoadSystem
heathrowToLondon = [Section 50 10 30,
                    Section 5  90 20, 
                    Section 40 2  25,
                    Section 10 8  0]

data Label = A | B | C deriving (Show)
type Path = [(Label, Int)]

roadStep :: (Path, Path) -> Section -> (Path, Path)
roadStep (pathA, pathB) (Section a b c) = 
    let priceA = sum $ map snd pathA
        priceB = sum $ map snd pathB
        forwordPriceToA = priceA + a
        crossPriceToA   = priceB + b + c
        forwordPriceToB = priceB + b
        crossPriceToB   = priceA + a + c
        newPathToA = if forwordPriceToA <= crossPriceToA
                     then (A, a):pathA
                     else (C, c):(B, b):pathB
        newPathToB = if forwordPriceToB <= crossPriceToB
                     then (B, b):pathB
                     else (C, c):(A, a):pathA
    in (newPathToA, newPathToB)
