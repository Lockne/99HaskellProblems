module Problem_05
  ( myReverse
  ) where

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]
