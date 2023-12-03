module MonadPop where
    pop :: [Int] -> Maybe [Int]
    pop [] = Nothing
    pop (_:xs) = Just xs

    sample1 = pop []
    sample2 = pop [1]
    sample3 = return([1, 1, 1]) >>= pop >>= pop >>= pop >>= pop
    sample4 = return([1, 1, 1]) >>= pop
    sample5 = Just 3 >> Just 3
    sample6 = Nothing >> Just 3
    sample7 = return([1, 1, 1]) >>= pop >> Just [3]
    sample8 = Just 3 >> Nothing >> Just 2