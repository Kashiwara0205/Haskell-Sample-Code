import Test.HUnit
import YesNoMod

testYesNoMod :: Test
testYesNoMod = "YesNoModのテスト" ~: test
    [ 
        "0以外だとTrueが返却される" ~: yesno (1 :: Int) ~?= True,
        "0だとFalseが返却される" ~: yesno (0 :: Int) ~?= False,
        "TrueだとTrueが返却される" ~: yesno (True) ~?= True,
        "FalseだとFalseが返却される" ~: yesno (False) ~?= False
    ]

main :: IO ()
main = do
    runTestTT (TestList [testYesNoMod])
    return ()