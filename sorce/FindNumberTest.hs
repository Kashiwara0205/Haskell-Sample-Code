import Test.HUnit
import FindNumber

testFindNumber :: Test 
testFindNumber = "配列内に存在していたらTrueしていなければFalse" ~: test
    [ "存在している" ~: findNumber [1, 2, 3] 1 ~?= True,
      "存在していない" ~: findNumber [1, 2, 3] 0 ~?= False
    ]

main :: IO ()
main = do
    runTestTT (TestList [testFindNumber])
    return ()