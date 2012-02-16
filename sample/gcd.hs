module Main(main) where

gcd' a b = (if a >= b then id else flip) f a b
    where f a b = let r = a `mod` b
                  in if r == 0 then b else f b r
           
main = mapM_ (print.uncurry gcd') [(255, 315), (288, 639), (6292, 8580)]