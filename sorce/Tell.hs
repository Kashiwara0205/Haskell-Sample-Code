module Tell where
    tell :: [a] -> String
    tell [] = "zero"
    tell (x:[]) = "one"
    tell (x:y:[]) = "two"
    tell (x:y:_) = "three or more"