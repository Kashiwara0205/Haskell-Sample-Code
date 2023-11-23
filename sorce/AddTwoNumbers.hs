module AddTwoNumbers(addTwoNumbers) where
    import Data.Char(digitToInt)

    addTwoNumbers :: [Int] -> [Int] -> [Int]
    addTwoNumbers [] [] = []
    addTwoNumbers x y = 
        let xNumber = read $ arrayNumberToString x :: Int
            yNumber = read $ arrayNumberToString y :: Int
            sum = xNumber + yNumber
        in reverse $ stringToArrayNumber $ show sum

    arrayNumberToString :: [Int] -> String
    arrayNumberToString [] = ""
    arrayNumberToString (x:xs) = show x ++ arrayNumberToString(xs)

    stringToArrayNumber :: String -> [Int]
    stringToArrayNumber "" = []
    stringToArrayNumber (x:xs) = digitToInt x : stringToArrayNumber(xs)