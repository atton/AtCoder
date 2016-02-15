-- passed only small set
main = getLine >>= return . read >>= (\n -> putStrLn . show . length . filter (== '1') . concat $ fmap show [1..n])
