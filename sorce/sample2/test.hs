import Test.HUnit
import Sample2

testSquare :: Test
testSquare = "Test square function" ~: test
    [ "Test 2 squared" ~: square 2 ~?= 4
    , "Test 5 squared" ~: square 5 ~?= 25
    ]

main :: IO ()
main = do
    runTestTT (TestList [testSquare])
    return ()