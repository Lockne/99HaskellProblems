module Problem_02 (myButLast) where

myButLast (x:y:xs) | xs /= [] = myButLast (y:xs)
                   | xs == [] = x      
