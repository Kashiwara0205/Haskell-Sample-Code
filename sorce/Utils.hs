module Utils(truncateDouble) where
    truncateDouble :: Double -> Int -> Double
    truncateDouble x position = fromIntegral(truncate (x * ( getTruncateDoubleValue' position ) )) / (getTruncateDoubleValue' position)

    getTruncateDoubleValue' :: Int -> Double
    getTruncateDoubleValue' 0 = 1 :: Double
    getTruncateDoubleValue' 1 = 10 :: Double
    getTruncateDoubleValue' 2 = 100 :: Double
    getTruncateDoubleValue' 3 = 1000 :: Double
    getTruncateDoubleValue' 4 = 10000 :: Double
    getTruncateDoubleValue' 5 = 100000 :: Double
    getTruncateDoubleValue' _ = 1 :: Double