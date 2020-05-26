split :: (Ord a, Num a, Enum a) => a -> [b] -> ([b], [b])
split n xs =
    (map snd $ filter (\(i, _) -> i <= n) $ zip [1..] xs, map snd $ filter (\(i, _) -> i > n) $ zip [1..] xs )
