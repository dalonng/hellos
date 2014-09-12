

s1 = [ x^2 | x <-[0..10], x < 10]

s2 = [ (x, y) | x <- [1..4], y <- [1..4]]

map' f xs = [ f x | x <- xs]


-- pi
series :: Int -> [Double]
series n =[1/(2*(fromIntegral k)+1) * (-1)^k | k <- [0..n]]

pi2 = 4 * (sum $ series 200000)

-- series' :: Int -> [Double]
-- -- series' n = [(5^(2*k+1)/(((2*(fromIntegral k)+1)+1) * (6^(2*(fromIntegral k)+1)+1)) * (-1)^k | k <-[0..n]]
--
-- pi3 = 4* (sum $ series' 20)


factors :: Integral a => a -> [a]
factors n = [x | x <- [1..n],mod n x == 0]

isPrime :: Integral a => a -> Bool
isPrime n = factors n == [1,n]

primes :: Integral a => a -> [a]
primes n = [x | x <- [1..n], isPrime x]

isPrime1 :: Integral a => a -> Bool
isPrime1 2 = True
isPrime1 p = p>1 && (all (\n-> p `mod` n /= 0) $ takeWhile (\n-> n*n <p) [3,5..])

nextPrime :: Integer -> Integer
nextPrime n | odd n = if isPrime n then n else nextPrime (n+2)
			| otherwise = nextPrime (n+1)
			
sieve :: (Integral a) => [a] -> [a]	
sieve [] = []
sieve (p:ps) = p:sieve [x | x <-ps, x`mod` p /= 0]

count :: Integral a => a -> a -> (a,a)
count n f = if mod n f /= 0 then (0,f) else count n/f f
count n f | n `mod` f == 0 = count n/f f
		 | otherwise = (0, f)

primeFactors :: (Integral a) => a -> [a]
primeFactors n | n mod f ==0 = prime
			where fs = [x| x<- factors n, x /= n, isPrime x]
			
			