import Test.HUnit
import TrafficLightMod

testTrafficLightMod :: Test
testTrafficLightMod = "TrafficLightModのテスト" ~: test
    [ 
        "show Red" ~: show Red ~?= "Red light",
        "Red == Red" ~: Red == Red ~?= True
    ]

main :: IO ()
main = do
    runTestTT (TestList [testTrafficLightMod])
    return ()