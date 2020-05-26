module Problem_04
  ( myLength
  , myLength'
  ) where

myLength :: [a] -> Int
myLength = sum . map (\_ -> 1)

myLength' :: Foldable t => t a -> Int
myLength' = foldl (\c _ -> c + 1) 0
  
