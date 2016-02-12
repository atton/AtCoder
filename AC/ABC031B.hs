import Control.Monad

calc :: Int -> Int -> Int -> Int
calc mi ma n
    | mi > n    = mi - n
    | ma < n    = -1
    | otherwise = 0


main = do
  [mi, ma] <- return . fmap read . words =<< getLine
  n <- read <$> getLine
  mapM_ (putStrLn . show . calc mi ma . read) =<< replicateM n getLine
