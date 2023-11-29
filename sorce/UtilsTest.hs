import Test.HUnit
import Utils

testUtils :: Test
testUtils = "Utilsのテスト" ~: test
    [ 
        "1.00 => 1.00" ~: truncateDouble 1.00 1 ~?= 1.00,
        "1.22 => 1.2" ~: truncateDouble 1.22 1 ~?= 1.2,
        "1.5555 => 1.5" ~: truncateDouble 1.5555 1 ~?= 1.5,
        "1.555544444 => 1.55554" ~: truncateDouble 1.555544444 5 ~?= 1.55554
    ]

main :: IO ()
main = do
    runTestTT (TestList [testUtils])
    return ()