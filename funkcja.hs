zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

main :: IO ()
main = do
    print $ zipWith' (+) [4,2,5,6] [2,6,2,3]
    print $ zipWith' max [6,3,2,1] [7,3,1,5]
    print $ zipWith' (++) ["foo ", "bar ", "baz "] ["fighters", "hoppers", "aldrin"]
    print $ zipWith' (*) (replicate 5 2) [1..]
    print $ zipWith' (zipWith' (*)) [[1,2,3],[3,5,6],[2,3,4]] [[3,2,2],[3,4,5],[5,4,3]]