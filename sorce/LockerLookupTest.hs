import Test.HUnit
import LockerLookup
import qualified Data.Map as Map

lockersTestData :: LockerMap
lockersTestData = Map.fromList
  [(100, (Taken, "ZDA")),
   (101, (Free, "ZDA2"))
  ]

testLockerLookup :: Test 
testLockerLookup = "lockerLookupテスト" ~: test
    [ "番号が存在しない" ~: lockerLookup 99 lockersTestData ~?= Left "nothing",
      "番号が存在するが取得済み" ~: lockerLookup 100 lockersTestData ~?= Left "already taken",
      "番号が存在しており空きがある" ~: lockerLookup 101 lockersTestData ~?= Right "ZDA2"
    ]

main :: IO ()
main = do
    runTestTT (TestList [testLockerLookup])
    return ()