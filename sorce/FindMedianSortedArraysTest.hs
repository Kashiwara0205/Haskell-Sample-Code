import Test.HUnit
import FindMedianSortedArrays

testFindMedianSortedArrays :: Test 
testFindMedianSortedArrays = "testFindMedianSortedArrays" ~: test
    [ "[1, 2, 3]の中央値は2" ~: findMedianSortedArrays [1, 3] [2] ~?= 2.0000,
      "[1, 2, 3, 4]の中央値は2.5" ~: findMedianSortedArrays [1, 2] [3, 4] ~?=  2.50000
    ]

main :: IO ()
main = do
    runTestTT (TestList [testFindMedianSortedArrays])
    return ()