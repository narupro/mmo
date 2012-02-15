module Main(main) where

import Data.Monoid

newtype Min a = Min { getMin :: a } deriving (Eq, Ord, Read, Show, Bounded)
newtype Max a = Max { getMax :: a } deriving (Eq, Ord, Read, Show, Bounded)

instance (Ord a, Bounded a) => Monoid (Min a) where
	mempty = maxBound
	mappend = min

instance (Ord a, Bounded a) => Monoid (Max a) where
	mempty = minBound
	mappend = max

main = print (Min (5::Int) `mappend` Min 3 `mappend` mempty) >>
		print (Max (5::Int) `mappend` Max 3 `mappend` mempty)