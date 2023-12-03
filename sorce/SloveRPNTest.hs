import Test.HUnit
import SloveRPN

testSloveRPN :: Test
testSloveRPN = "SloveRPN" ~: test
    [ "1 + 1" ~: sloveRPN "1 1 +" ~?= Just 2,
      "1 - 2" ~: sloveRPN "1 2 -" ~?= Just (-1),
      "5 * 6" ~: sloveRPN "5 6 *" ~?= Just 30
    ]

main :: IO ()
main = do
    runTestTT (TestList [testSloveRPN])
    return ()