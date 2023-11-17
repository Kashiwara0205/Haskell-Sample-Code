import Test.HUnit
import RightTrinangles

testRightTrinangles :: Test
testRightTrinangles = "周囲の長さが24cmの直角三角形を取得する" ~: test
    [ "周囲の長さが24cmの直角三角形を見つける" ~: rightTrinangles ~?= [(8, 6, 10)]
    ]

main :: IO ()
main = do
    runTestTT (TestList [testRightTrinangles])
    return ()