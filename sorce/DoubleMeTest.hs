import Test.HUnit
import DoubleMe


testDoubleMe :: Test
testDoubleMe = "2倍する" ~: test
    [  "4を2倍すると8になる" ~: doubleMe 4 ~?= 8
    ]

main :: IO ()
main = do
    runTestTT (TestList [testDoubleMe])
    return ()