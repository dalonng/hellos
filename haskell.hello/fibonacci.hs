
fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

fibs :: Integer -> [Integer]
fibs n = map fibonacci [0..n]

-- fast fibonacci

fibStep :: (Integer, Integer) -> (Integer, Integer)
fibStep (u, v) = (v, u+v)

fibPair :: Integer -> (Integer, Integer)
fibPair 0 = (0, 1)
fibPair n = fibStep (fibPair (n-1))

fastFib n = fst $ fibPair n

fastFibs n = map fastFib [1..n]

fibs' n = take n (map fst (iterate fibStep (0, 1)))


fib 0 f1 f2 = f2
fib n f1 f2 = fib (n-1) f2 (f1+f2)

fibonacci' n = fib n 1 1

golden ::  Fractional a =>Int -> [a]
golden n = take n (map (\(x, y) -> fromIntegral x/fromIntegral y) (iterate fibStep (0, 1)))

combine :: [(a, a)] -> [(a, a, a)]
combine ((x1, y1):(x2, y2):fs) = (x1, y1, y2): combine ((x2, y2):fs)
combine _ = []

fibPairs :: Integer -> [(Integer, Integer)]
fibPairs n = map fibPair [1..n]

difference :: Integer -> [Integer]
difference n = map (\(x, y, z) -> x*z - y*y) (combine $ fibPairs n)
