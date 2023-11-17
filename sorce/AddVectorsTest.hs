import Test.HUnit
import AddVectors

testAddVectors :: Test
testAddVectors = "ベクトルの加算" ~: test
    [  "ベクトル同士を足し合わせて期待した値と一致することを確認" ~: addVectors (1, 2) (1, 2) ~?= (2, 4)
    ]

main :: IO ()
main = do
    runTestTT (TestList [testAddVectors])
    return ()