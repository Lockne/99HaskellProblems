import Data.List
-- | "aaabccd" >> ["aaa", "b", "cc", "d"] >> [(3, "a"), (1, "b"), (2, "c"), (1, "d")]
encode :: Eq b => [b] -> [(Int, b)]                          
encode xs = zip (length <$> group xs) (head <$> group xs)
                          
