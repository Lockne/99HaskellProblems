go' n x | n > 0 =  x : go' (n - 1) x
        | n == 0 = []

repli :: (Foldable t, Ord a, Num a) => a -> t b -> [b]
repli n  = concatMap (go' n)
