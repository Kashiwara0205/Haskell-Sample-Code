import Test.HUnit
import MonadPop

testMonadPop :: Test 
testMonadPop = "MonadPopメソッドに関してテスト" ~: test
    [ "sample1" ~: sample1 ~?= Nothing,
      "sample2" ~: sample2 ~?= Just [],
      "sample3" ~: sample3 ~?= Nothing,
      "sample4" ~: sample4 ~?= Just [1, 1]
    ]

main :: IO ()
main = do
    runTestTT (TestList [testMonadPop])
    return ()