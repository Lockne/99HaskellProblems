import Data.List

compress :: (Eq a) => [a] -> [a]
compress = (fmap head) . group            
