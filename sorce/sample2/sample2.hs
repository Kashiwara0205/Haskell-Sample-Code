module Main where

square :: Int -> Int
square x = x * x

main :: IO ()
main = do
  let result = square 3
  putStrLn ("Result is : " ++ show result)
