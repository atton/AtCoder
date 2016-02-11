import Data.List as L

subSequences :: Int -> String -> [String]
subSequences k str
        | length str < k  = []
        | otherwise       = (take k str) : (subSequences k $ tail str)

main = do
    s <- getLine
    k <- return . read =<< getLine
    putStrLn . show . length $ L.nub $ subSequences k s
