module DNA (toRNA) where

import Data.Maybe (fromJust)

transcode :: Char -> Maybe Char
transcode 'G' = Just 'C'
transcode 'C' = Just 'G'
transcode 'T' = Just 'A'
transcode 'A' = Just 'U'
transcode _ = Nothing

allOrNothing :: [Maybe a] -> Maybe [a]
allOrNothing = foldr maybeAppend $ Just []
  where maybeAppend = (\x y -> (:) <$> x <*> y)

toRNA :: String -> Maybe String
toRNA as = allOrNothing $ map transcode as
