main = do
    n <- return . read =<< getLine
    mapM_ putStrLn $ (foldr (.) id . replicate (n-1) $ (=<<) (\x -> [x ++ "a", x++"b", x++"c"])) ["a", "b" , "c"]
