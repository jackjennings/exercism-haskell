module RunLength (decode, encode) where

import Data.Char (isLetter)

splitSegments :: String -> [String]
splitSegments "" = []
splitSegments m = [m]
-- splitSegments m = xs -- [x] : splitSegments xs
--   where (x, xs) = breakSegment m

breakSegment :: String -> (String, String)
breakSegment = span isLetter

decode :: String -> String
decode = concat . splitSegments

encode :: String -> String
encode = undefined
