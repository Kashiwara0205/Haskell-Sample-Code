module LongestSubstring(longestSubstring) where
    longestSubstring :: String -> Int
    longestSubstring [] = 0
    longestSubstring x = longestSubstring' x "" ""

    longestSubstring' :: String -> String -> String -> Int
    longestSubstring' [] maxSubstring _ = length(maxSubstring)
    longestSubstring' (x:xs) maxSubstring uniqString = 
        let maxSubstringSize = length(maxSubstring)
            newUniqString = if any (== x) uniqString then [x] else x : uniqString
            newUniqStringSize = length(newUniqString)
            newMaxSubstring = if newUniqStringSize > maxSubstringSize then newUniqString else maxSubstring
        in longestSubstring' xs newMaxSubstring newUniqString