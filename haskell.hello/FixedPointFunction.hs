fix :: (a->a) -> a
fix f = f (fix f)

factorial :: Int -> Int
factorial = fix (\f n -> if (n==0) then 1 else n * f (n-1))


fibonacci :: Int -> Int
fibonacci = fix (\f n -> if (n==0) then 0 else if (n==1) then 1 else f(n-1) + f (n-2))

fibs n = map fibonacci [0..n]

squareroot :: Int -> Double -> Double
squareroot 0 x = x
squareroot n x = (squareroot (n-1) x + x/squareroot (n-1) x )/2
