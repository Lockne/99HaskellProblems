module Problem_01
  ( myLast
  ) where

myLast (x:xs)
  | xs /= [] = myLast xs
  | xs == [] = x

               
