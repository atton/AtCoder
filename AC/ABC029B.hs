import Control.Monad
main = putStrLn . show . length . filter (elem 'r') =<< replicateM 12 getLine
