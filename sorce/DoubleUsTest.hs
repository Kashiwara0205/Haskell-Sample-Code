import Test.HUnit
import DoubleUs

testDoubleUs :: Test
testDoubleUs = "2倍にして足し合わせる" ~: test
    [  "4 * 2 + 2 * 2" ~: doubleUs 4 2 ~?= 12
    ]

main :: IO ()
main = do
    runTestTT (TestList [testDoubleUs])
    return ()