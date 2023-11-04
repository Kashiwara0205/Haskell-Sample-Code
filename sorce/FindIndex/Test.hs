import Test.HUnit
import Code

testFindIndex :: Test
testFindIndex = "配列内に要素が存在していたらそのindexを返す" ~: test
    [ "存在している" ~: findIndex [1, 2, 3] 1 ~?= 0,
      "存在していない" ~: findIndex [1, 2, 3] 0 ~?= -1
    ]

main :: IO ()
main = do
    runTestTT (TestList [testFindIndex])
    return ()