module Main where

lyrics :: Integer -> String
lyrics n
  | n <= 0     = "no more seats in the lecture hall!\n" 
  | otherwise  = show n ++ " " ++ seats ++ " in the lecture hall! " ++
                 "Only " ++ show n ++ " " ++ seats ++ " left!\n" ++
                 "A students walks in, and sits down, now there are\n" ++
                 lyrics (n-1)
  where seats = if n /= 1 then "seats" else "seat"

song :: String
song = lyrics 75

main = putStr song
