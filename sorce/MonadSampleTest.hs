import Test.HUnit
import MonadSample

testMonadSample :: Test
testMonadSample = "testMonadSample" ~: test
    [ "sample1" ~: sample1  ~?= Nothing,
      "sample2" ~: sample2  ~?= Just (1, 0),
      "sample4" ~: sample4  ~?= Just (1, 0),
      "sample5" ~: sample5  ~?= [Just (1, 0)]
    ]

main :: IO ()
main = do
    runTestTT (TestList [testMonadSample])
    return ()