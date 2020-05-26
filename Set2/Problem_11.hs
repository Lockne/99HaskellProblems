import           Data.List

encodeModified xs
  | length xs == length (group xs) = (,) 1 . head <$> group xs
  | otherwise = (\x -> (,) (length x) (head x)) <$> group xs
