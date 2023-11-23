import Test.HUnit
import CalcBmis

testCalcBmis :: Test
testCalcBmis = "BMIを計算する" ~: test
    [  "BMIを計算する" ~: calcBmis [(180, 59)] ~?= [5.17]
    ]

main :: IO ()
main = do
    runTestTT (TestList [testCalcBmis])
    return ()