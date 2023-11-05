import Test.HUnit
import DoubleSmallNumber

testDoubleSmallNumber :: Test
testDoubleSmallNumber = "100以下なら2倍になる" ~: test
    [ "99は2倍になる" ~: doubleSmallNumber 99 ~?= 198,
      "100は2倍になる" ~: doubleSmallNumber 100 ~?= 200,
      "101はそのまま返却" ~: doubleSmallNumber 101 ~?= 101
    ]

main :: IO ()
main = do
    runTestTT (TestList [testDoubleSmallNumber])
    return ()