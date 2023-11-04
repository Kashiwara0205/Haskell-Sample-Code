module FindIndex where
    findIndex :: [Int] -> Int -> Int
    findIndex xs number = findIndex' xs number 0
    findIndex' :: [Int] -> Int -> Int -> Int
    findIndex'  [] _ _ = -1
    findIndex'  (x:xs) number index
        | x == number = index 
        | otherwise = findIndex' xs number (index + 1)