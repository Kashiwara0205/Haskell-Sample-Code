module FanctorSamples where
    sample1 = fmap (*2) [1..3]
    sample2 = fmap (*2) (Just 200)
    sample3 = fmap (*3) (*3) 1
    sample4 = fmap (replicate 3) [1]
    sample5 = Just (+3) <*>  Just 9
    sample6 = Just (*4) <*>  Just 9
    sample7 = pure (+) <*> Just 3 <*> Just 5
    sample8 = Just (+) <*> Just 3 <*> Just 5 
    sample9 = (++) <$> Just "no" <*> Just "vol"
    sample10 = (++) <$> ["xx", "xx"] <*> ["?", "!"]
    sample11 = [(+), (-)] <*> [4, 4] <*> [4, 4]
    sample12 = (+) <$> (+3) <*> (*100) $ 5
    sample13 = (\x y z -> [x, y, z]) <$> (+3) <*> (*2) <*> (/2) $ 5