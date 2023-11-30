module FindMedianSortedArrays(findMedianSortedArrays) where
    import Utils
    import Data.List (sort)
    findMedianSortedArrays :: [Int] -> [Int] -> Double
    findMedianSortedArrays nums1 nums2 = 
        let mergednums = sort (nums1 ++ nums2)
            mergednumsLength = length mergednums 
            medianIndex = doubleToInt ( intToDouble(mergednumsLength) / 2 )
            merdian = if odd medianIndex then getMerdianOddNumber mergednums medianIndex 
                                         else getMerdianEvenNumber mergednums medianIndex
        in truncateDouble merdian 5

    getMerdianOddNumber :: [Int] -> Int -> Double
    getMerdianOddNumber mergednums medianIndex =
        let merdian = intToDouble (mergednums !! medianIndex)
        in merdian
        
    getMerdianEvenNumber :: [Int] -> Int -> Double
    getMerdianEvenNumber mergednums medianIndex =
        let val1 =  mergednums !! medianIndex
            val2 = mergednums !! (medianIndex - 1)
        in ( intToDouble (val1 + val2) ) / 2

    intToDouble :: Int -> Double
    intToDouble x = fromIntegral x

    doubleToInt :: Double -> Int
    doubleToInt x = floor x