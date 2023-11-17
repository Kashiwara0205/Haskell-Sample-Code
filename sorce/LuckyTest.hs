import Test.HUnit
import Lucky

testLucky :: Test 
testLucky = "Luckyメソッドに関してテスト" ~: test
    [ "7ならluckyが返ってくる" ~: lucky 7 ~?= "lucky",
      "それ以外ならunluckyが返ってくる" ~: lucky 1 ~?= "unlucky"
    ]

main :: IO ()
main = do
    runTestTT (TestList [testLucky])
    return ()