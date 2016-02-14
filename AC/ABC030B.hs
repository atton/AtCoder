long :: Integer -> Float
long m = 6.0 * fromInteger m

short :: (Integer, Integer) -> Float
short (h,m) = (0.5 * fromInteger m) + (fromInteger (30 * (h`rem`12)))

calc :: [Integer] -> Float
calc (h:m:[]) = formalize . abs $ (long m) - (short (h,m))
    where
        formalize x
            | x > 180 = 360 - x
            | otherwise = x


main = putStrLn . show . calc . fmap read . words =<< getLine
