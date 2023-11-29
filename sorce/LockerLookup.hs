module LockerLookup where
    import qualified Data.Map as Map

    data LockerState = Taken | Free deriving(Show, Eq)
    type Code = String
    type LockerMap = Map.Map Int (LockerState, Code)

    lockerLookup :: Int -> LockerMap -> Either String Code
    lockerLookup lockerNumber lockerMap = case Map.lookup lockerNumber lockerMap of 
        Nothing -> Left "nothing"
        Just(state, code) -> if state /= Taken
                                then Right code
                                else Left "already taken"