insertAt c xs n =
  concat
    (go
       ( map snd $ filter (\(i, _) -> i < n) $ zip [1 ..] xs
       , [c]
       , map snd $ filter (\(i, _) -> i >= n) $ zip [1 ..] xs))
  where
    go (a, b, c) = [a, b, c]

insertAt' c xs n =
  concat
    [ map snd $ filter (\(i, _) -> i < n) $ zip [1 ..] xs
    , [c]
    , map snd $ filter (\(i, _) -> i >= n) $ zip [1 ..] xs
    ]

-- filter (\(i,_) -> i < n)
-- filter (\(i,_) -> i > n)
