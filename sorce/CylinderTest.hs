import Test.HUnit
import Cylinder

testCylinder :: Test
testCylinder = "円柱を計算する" ~: test
    [  "円柱を計算する" ~: cylinder 4.5 1.5 ~?= 169.64600329384882
    ]

main :: IO ()
main = do
    runTestTT (TestList [testCylinder])
    return ()