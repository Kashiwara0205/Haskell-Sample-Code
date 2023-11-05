import Test.HUnit
import TwoSum

testTwoSum :: Test
testTwoSum = "twoSumを検証する" ~: test
    [ "3の合計値を算出するindexは [0, 1]" ~: twoSum [2,7,11,15]  9 ~?= [0, 1],
      "6の合計値を算出するindexは [1, 2]" ~: twoSum [3,2,4]  6 ~?= [1, 2],
      "6の合計値を算出するindexは [0, 1]" ~: twoSum [3,3] 6 ~?= [0, 1]
    ]

main :: IO ()
main = do
    runTestTT (TestList [testTwoSum])
    return ()