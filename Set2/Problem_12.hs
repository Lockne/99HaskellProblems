-- | function is given an (n,x) tuple and repeats x n times.
-- | repeater :: Eq a => (Int, a) -> [a]
repeater (n, x) = go n x
  where
    go n x
      | n > 0 = x : go (n - 1) x
      | n == 0 = []

repeater' (n, x)
  | n > 0 = x : repeater' (n - 1, x)
  | n == 0 = []

decodeModified xs = concatMap repeater xs -- | (0.01 secs, 115,264 bytes)

decodeModified' xs = concatMap repeater' xs -- | (0.01 secs, 115,176 bytes)
