
---------------------------------
--- Type
---------------------------------

-- Char
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

-- Int
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- Integer
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Float
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double
circumference' :: Double -> Double
circumference' r = 2 * pi * r


---------------------------------
-- Typeclass
---------------------------------

-- Eq

