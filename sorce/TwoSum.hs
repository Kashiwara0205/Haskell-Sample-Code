module TwoSum where
    pickIndex' :: [(Int, Int)] -> [Int]
    pickIndex' [] = []  
    pickIndex' (x:xs) = [fst x, snd x]

    twoSum :: [Int] -> [Int] -> Int -> [Int]
    twoSum xs ys num = pickIndex' [ (i, j) | (x, i) <- zip xs [0..], (y, j) <- zip ys [0..], x + y == num]