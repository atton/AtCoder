import Data.List

type Sum = Int
type Pattern = Int

calc :: (Sum, Pattern) -> [Int] -> (Sum, Pattern)
calc v []          = v
calc (s, p) (x:xs) = calc (s+ remains*x, (duplicates * p) `mod` 1000000007) xs
    where
        duplicates = length $ filter (== x) (x:xs)
        remains    = length (x:xs)

result :: (Sum, Pattern) -> [Int]
result (s, p) = [s, p]


main = do
    inputs <- getContents
    let nums  = sort . tail . fmap read $ lines inputs
        len   = length nums
        score = foldl1 (+) $ zipWith (*) (reverse [1..len]) nums
        patterns = foldl1 (*) $ map (\x -> product [1..(length x)]) $ groupBy (==) nums
    putStrLn $ show score
    putStrLn $ show $ mod patterns 1000000007
