calc (a:b:c:d:[]) = judge $ compare (b/a) (d/c)
    where
        judge GT = "TAKAHASHI"
        judge EQ = "DRAW"
        judge LT = "AOKI"


main =  putStrLn . calc . fmap read . words  =<< getLine
