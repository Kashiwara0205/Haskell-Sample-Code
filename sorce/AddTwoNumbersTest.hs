import Test.HUnit
import AddTwoNumbers

testAddTwoNumbers :: Test
testAddTwoNumbers = "AddVectorsテスト" ~: test
    [ 
        "空配列" ~: addTwoNumbers [] [] ~?= [],
        "2,4,3 + 5,6,4" ~: addTwoNumbers [2, 4, 3] [5, 6, 4] ~?= [7,0,8],
        "9,9,9,9,9,9,9 + 9,9,9,9" ~: addTwoNumbers [9,9,9,9,9,9,9] [9,9,9,9] ~?= [8,9,9,9,0,0,0,1]
    ]

main :: IO ()
main = do
    runTestTT (TestList [testAddTwoNumbers])
    return ()