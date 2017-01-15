module SumOfMultiples (sumOfMultiples) where

isDivisibleBy :: Int -> Int -> Bool
isDivisibleBy x y = mod x y == 0

divisibleByAny :: [Int] -> Int -> Bool
divisibleByAny factors subject = any (isDivisibleBy subject) factors

sumOfMultiples :: [Int] -> Int -> Int
sumOfMultiples [] _ = 0
sumOfMultiples factors limit = sum $ takeUntilLimit $ filterDivisibleFactors [1..]
  where
    filterDivisibleFactors = filter (divisibleByAny factors)
    takeUntilLimit = takeWhile (< limit)
