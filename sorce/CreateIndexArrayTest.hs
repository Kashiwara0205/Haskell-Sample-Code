import Test.HUnit
import CreateIndexArray

testCreateIndexArray :: Test
testCreateIndexArray = "数値に応じてindexが入力された配列を返却する" ~: test
    [  "1を入力した場合は[0]となる" ~: createIndexArray 1 ~?= [0],
     "3を入力した場合は[0, 1, 2]となる" ~: createIndexArray 3 ~?= [0, 1, 2]  
    ]

main :: IO ()
main = do
    runTestTT (TestList [testCreateIndexArray])
    return ()