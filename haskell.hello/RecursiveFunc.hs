

-- Leonardo Pisano Fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

fibs n = map fibonacci [0..n]

fibStep :: Double a => (a, a) -> (a, af)
fibStep (u, v) = (v, u+v)

fibPair :: Double a => a -> (a, a)
fibPair 0 = (0,1)
fibPair n = fibStep (fibPair (n-1)) 
