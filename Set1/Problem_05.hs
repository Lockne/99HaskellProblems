module Problem_05
  ( myReverse
  , myReverse'
  ) where

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

myReverse' :: [a] -> [a]
myReverse' = foldr (\x xs -> xs ++ [x]) []              
