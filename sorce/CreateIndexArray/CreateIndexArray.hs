module CreateIndexArray where
    createIndexArray :: Int -> [Int]
    createIndexArray i = createIndexArray' i []

    createIndexArray' :: Int -> [Int] -> [Int]
    createIndexArray' 0 xs = xs
    createIndexArray' i (xs)
        | i == 0 = xs
        | otherwise = createIndexArray' (i-1) ((i - 1) : xs)