remove :: (Eq a, Num a, Enum a) => a -> [b] -> [b]
remove n = map snd . filter (\(i,_) -> i /= n) . zip [1..] 
