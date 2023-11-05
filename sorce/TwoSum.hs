module TwoSum where
    pickIndex' :: [(Int, Int)] -> [Int]
    pickIndex' [] = []  
    pickIndex' (x:xs) = [fst x, snd x]

    twoSum :: [Int] -> Int -> [Int]
    twoSum xs num = pickIndex' [ (i, j) | (x, i) <- zip xs [0..], (y, j) <- zip xs [0..], x + y == num, i /= j]