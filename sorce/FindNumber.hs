module FindNumber where
    findNumber :: [Int] -> Int -> Bool
    findNumber [] _ = False
    findNumber (x:xs) number
        | x == number = True
        | otherwise = findNumber xs number