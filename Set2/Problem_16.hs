dropEvery xs n = map fst $ filter (\(x,i) -> i `mod` n /= 0) $ zip xs [1..]


dropEvery' k = snd . unzip . filter (\ (i, _) -> i `mod` k /= 0) . zip [1..]                 
