import Test.HUnit
import RemoveNonUppercase

testRemoveNonUppercase :: Test
testRemoveNonUppercase = "大文字以外を消す" ~: test
    [ "大文字以外が消えてAのみとなる" ~: removeNonUppercase ['A', 'b', '1'] ~?= ['A']
    ]

main :: IO ()
main = do
    runTestTT (TestList [testRemoveNonUppercase])
    return ()