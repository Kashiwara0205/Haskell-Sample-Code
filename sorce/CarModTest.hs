import Test.HUnit
import CarMod

testCarMod :: Test
testCarMod = "CarModのテスト" ~: test
    [  "情報をStringで取得する" ~: tellCar(Car "company1" "model2" 1997) ~?= "Company: \"company1\", Model: \"model2\", Year: 1997"
    ]

main :: IO ()
main = do
    runTestTT (TestList [testCarMod])
    return ()