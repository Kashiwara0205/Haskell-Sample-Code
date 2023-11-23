import Test.HUnit
import VectorModule

testVectorModule :: Test
testVectorModule = "VectorModuleのテスト" ~: test
    [ 
        "足し算の要素の一つ目取得" ~: fstVector(Vector 3 5 8 `vplus` Vector 3 5 8) ~?= 6,
        "タプルとして取得" ~: getTuple(Vector 3 5 8 `vplus` Vector 3 5 8) ~?=  (6, 10, 16)
    ]

main :: IO ()
main = do
    runTestTT (TestList [testVectorModule])
    return ()