module SloveRPN(sloveRPN) where
    sloveRPN :: String ->  Maybe Double
    sloveRPN = head' . foldl foldingFunction [] . words
        where foldingFunction (x:y:ys) "*" = (y * x):ys
              foldingFunction (x:y:ys) "+" = (y + x):ys
              foldingFunction (x:y:ys) "-" =  (y - x):ys
              foldingFunction xs numberString = read numberString:xs

    head' :: [a] -> Maybe a
    head' (x:xs) = Just x 
    head' []     = Nothing 