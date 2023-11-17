import Test.HUnit
import Tell

testTell :: Test
testTell = "tellメソッドのテスト" ~: test
    [ "配列が0の場合" ~: tell [] ~?= "zero",
      "配列が1の場合" ~: tell [1] ~?= "one",
      "配列が2の場合" ~: tell [True, False] ~?= "two",
      "配列が3の場合" ~: tell ["a", "b", "c"] ~?= "three or more"
    ]

main :: IO ()
main = do
    runTestTT (TestList [testTell])
    return ()