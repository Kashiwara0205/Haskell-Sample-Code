import Test.HUnit
import TwoSum

testTwoSum :: Test
testTwoSum = "x" ~: test
    [ "2の合計値を算出するindexはx:0, y:0" ~: twoSum [1, 2, 3, 4, 5] [1] 2 ~?= [0, 0],
      "11の合計値を算出するindexはx:1, y:1" ~: twoSum [1, 2, 3, 4, 5] [1, 9] 11 ~?= [1, 1],
      "合計値が存在しない場合は空になる" ~: twoSum [1, 2, 3, 4, 5] [1, 9] 111 ~?= []
    ]

main :: IO ()
main = do
    runTestTT (TestList [testTwoSum])
    return ()