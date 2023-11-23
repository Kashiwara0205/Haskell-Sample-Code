module CalcBmis where
    calcBmis :: [(Double, Double)] -> [Double]
    calcBmis xs = [truncateToTwoDecimals(bmi w h)| (w, h) <- xs]
        where bmi weight height = weight / height ^ 2

    truncateToTwoDecimals :: Double -> Double
    truncateToTwoDecimals x = fromIntegral(truncate (x * 10000)) / 100