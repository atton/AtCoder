calc :: [Int] -> Int
calc (atk:def:_) = max ((atk+1) * def) (atk * (def+1))

main = putStrLn =<< return . show . calc . fmap read . words  =<< getLine
