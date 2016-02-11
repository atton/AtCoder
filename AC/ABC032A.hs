gcd' :: Int -> Int -> Int
gcd' a b = if a == b then a
                     else gcd' x y
                        where x = min a b
                              y = (max a b) - x

solve :: [Int] -> Int
solve (a:b:_) = (a*b) `div` gcd' a b

main = do
    a <- return . read =<< getLine
    b <- return . read =<< getLine
    n <- return . read =<< getLine
    putStrLn . show . head . filter (>= n) $ scanl (+) 0 $ repeat $ (a*b) `div` gcd' a b
