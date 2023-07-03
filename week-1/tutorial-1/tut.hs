
fff :: Int -> Int -> ()
fff _a _b = ()


unit :: ()
unit = ()

square :: Integer -> Integer
square x = x * x

smallest :: Integer -> (Integer -> Integer)
--smallest x y = if x <= y then x else y
smallest x y = myIfThenElse (x <= y) x y

type NotBoolAtAll = Bool

myIfThenElse :: NotBoolAtAll -> a -> a -> a
myIfThenElse True  t _ = t
myIfThenElse False _ e = e

compute :: Integer -> Integer -> Integer
compute x y = let a = x - y
                  b = x + y
              in (a + 1) * (b + 2)

{-
   compute 4 2
 = let a = 4 - 2; b = 4 + 2 in (a + 1) * (b + 2)
 = let a = 2; b = 6 in (a + 1) * (b + 2)
 = (2 + 1) * (6 + 2)
 = 3 * 8
 = 24

twice double 3
 = double (double 3)
 = double 3 * double 3
 = (3 * 3) * (3 * 3)
 = 9 * 9
 = 81


-}

--square :: Integer -> Integer
--square x = x * x

zeros :: (z -> z) -> z -> z
zeros _ x = x

once :: (a -> a) -> a -> a
once f x = f x

twice :: (b -> b) -> b -> b
twice f x = f (f x)

thrice :: (c -> c) -> c -> c
--thrice f x = f (f (f x))
--thrice f x = f (twice f x)
thrice f x = twice f (f x)

{-
twice :: (b -> b) -> (b -> b)
twice :: ((b -> b) -> (b -> b)) -> (b -> b) -> (b -> b)

twice twice :: ??

twice twice square 3
= (twice twice square) 3
= (twice (twice square)) 3
= (twice square) ((twice square) 3)
= square (square (square (square 3)))

-}

asciiSquare :: Integer -> String
asciiSquare n = rows n
  where
  row :: String
  row = star n
  star :: Integer -> String
  star k
    | k == 0    = ""
    | otherwise = "*" ++ star (k - 1)
  rows :: Integer -> String
  rows 0 = ""
  rows k = row ++ "\n" ++ rows (k-1)


asciiSquare' :: Int -> String
asciiSquare' n = unlines (replicate n (replicate n '*'))

