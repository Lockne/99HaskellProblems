-- Lambda> rnd_select "abcdefgh" 3 >>= putStrLn
-- eda
import System.Random

-- take a list and extract a random element from it
chooseRandom :: String -> IO Char
chooseRandom xs =
   (xs !!) <$> randomRIO (0, length xs - 1)

rndSelect :: String -> Int -> IO ()
rndSelect string n = do
  let loop k acc
        | k > n = putStrLn $ reverse acc
      loop k acc = do
        a <- chooseRandom string
        loop (k + 1) (a : acc)
  loop 1 []

main = do
  string <- getLine
  n <- fmap read getLine :: IO Int
  rndSelect string n
