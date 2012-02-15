module Main(main) where

sieve (x:xs) = x : sieve (filter ((/=0).(`mod`x)) xs)
sieve [] = []

main = print $ sieve [2..60]