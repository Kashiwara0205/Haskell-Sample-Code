module MonadPop where
    pop :: [Int] -> Maybe [Int]
    pop [] = Nothing
    pop (_:xs) = Just xs

    sample1 = pop []
    sample2 = pop [1]
    sample3 = return([1, 1, 1]) >>= pop >>= pop >>= pop >>= pop
    sample4 = return([1, 1, 1]) >>= pop