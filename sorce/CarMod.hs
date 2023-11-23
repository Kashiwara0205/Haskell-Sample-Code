module CarMod where
    data Car a b c = Car{
        company :: a
        , model :: b
        , year :: c
    } deriving (Show)

    tellCar :: (Show a, Show b, Show c) => Car a b c -> String
    tellCar (Car {company = c, model = m, year = y}) =
        "Company: " ++ show c ++ ", Model: " ++ show m ++ ", Year: " ++ show y