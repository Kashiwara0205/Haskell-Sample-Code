import Test.HUnit
import BoomBangs

testBoomBangs :: Test
testBoomBangs = "10より小さい奇数をBOOM!に、それ以外をBANG!に置換する" ~: test
    [  "数値をBOOM!BANG!に置換する" ~: boomBangs [7..13] ~?= ["BOOM!", "BOOM!", "BANG!", "BANG!"]
    ]

main :: IO ()
main = do
    runTestTT (TestList [testBoomBangs])
    return ()