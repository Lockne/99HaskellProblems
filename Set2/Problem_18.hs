slice i j = map snd . filter (\(a, _) -> a <= j) . dropWhile (\(a,_) -> a < i) . zip [1..] 
