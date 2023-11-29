import Test.HUnit
import LongestSubstring

testLongestSubstring :: Test 
testLongestSubstring = "longestSubstringのテスト" ~: test
    [
      "abcabcbb" ~: longestSubstring "abcabcbb" ~?= 3,
      "bbbbb" ~: longestSubstring "bbbbb" ~?= 1,
      "pwwkew" ~: longestSubstring "pwwkew" ~?= 3,
      "" ~: longestSubstring "" ~?= 0
    ]

main :: IO ()
main = do
    runTestTT (TestList [testLongestSubstring])
    return ()