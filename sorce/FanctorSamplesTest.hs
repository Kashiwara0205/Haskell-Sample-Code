import Test.HUnit
import FanctorSamples

testFanctorSamples:: Test
testFanctorSamples= "Fanctor周りの検証" ~: test
    [  "sample1" ~: sample1 ~?= [2, 4, 6],
       "sample2" ~: sample2 ~?= Just 400,
       "sample3" ~: sample3 ~?= 9,
       "sample4" ~: sample4 ~?= [[1, 1, 1]],
       "sample5" ~: sample5 ~?= Just 12,
       "sample6" ~: sample6~?= Just 36,
       "sample7" ~: sample7~?= Just 8,
       "sample8" ~: sample8~?= Just 8,
       "sample9" ~: sample9~?= Just "novol",
       "sample10" ~: sample10~?= ["xx?","xx!","xx?","xx!"],
       "sample11" ~: sample11~?=  [8,8,8,8,0,0,0,0],
       "sample12" ~: sample12~?=  508,
       "sample13" ~: sample13~?=  [8.0, 10.0, 2.5]
    ]

main :: IO ()
main = do
    runTestTT (TestList [testFanctorSamples])
    return ()