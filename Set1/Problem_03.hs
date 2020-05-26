module Problem_03 (elementAt) where

elementAt :: [a] -> Int -> a
elementAt [] n = error "Please enter a non-empty list"
elementAt xs n = go xs n 0
                 where go (x:xs) n count | count < (n - 1) = go xs n (count + 1)
                                         | count == (n - 1) = x
