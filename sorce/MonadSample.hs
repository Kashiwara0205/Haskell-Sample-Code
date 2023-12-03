module MonadSample(sample1, sample2, sample4, sample5) where
    type Birds = Int
    type Pole = (Birds, Int)

    landLeft :: Birds -> Pole -> Maybe Pole
    landLeft n (left, right)
        | abs ( (left + n) - right ) < 4 = Just (left + n, right)
        | otherwise = Nothing

    landRight :: Birds -> Pole -> Maybe Pole
    landRight n (left, right)
        | abs ( (right + n) - left ) < 4 = Just (right + n, left)
        | otherwise = Nothing

    sample1 = return(0, 0) >>= landLeft 1 >>= landRight 4 >>= landLeft (-1) >>= landRight(-2)
    sample2 =  landLeft 1 (0, 0)
    sample3 =  landLeft 1
    sample4 =  sample3 (0, 0)
    pole_data = ( 0, 0 ) :: Pole 
    sample5 =  map (sample3) [pole_data]