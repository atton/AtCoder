comp :: (Char, Char) -> Bool
comp (_, '*') = True
comp ('*', _) = True
comp (a, b)   = a == b

result :: Bool -> String
result True  = "YES"
result False = "NO"

main = do
    str <- getLine
    putStrLn $ result $ all comp $ zip str $ reverse str
