module TrafficLightMod where
    data TrafficLight = Red | Green | Yellow

    instance Show TrafficLight where
        show Red = "Red light"
        show Green = "Green light"
        show Yellow = "Yellow light"

    instance Eq TrafficLight where
        Red == Red = True
        Green == Green = True
        Yellow == Yellow = True
        _ == _ = False