module Bob (responseFor) where

import Data.Char (toUpper, isLetter, isSpace)
import Data.List (dropWhileEnd)

trim :: String -> String
trim = dropWhileEnd isSpace . dropWhile isSpace

isAlphaString :: String -> Bool
isAlphaString = any isLetter

isCapitalized :: String -> Bool
isCapitalized message
  | isAlphaString message = message == map toUpper message
  | otherwise = False

isQuestion :: String -> Bool
isQuestion "" = False
isQuestion message = (==) '?' $ last message

isEmpty :: String -> Bool
isEmpty "" = True
isEmpty message
  | all isSpace message = True
  | otherwise = False

responseFor :: String -> String
responseFor message
  | isEmpty message' = "Fine. Be that way!"
  | isCapitalized message' = "Whoa, chill out!"
  | isQuestion message' = "Sure."
  | otherwise = "Whatever."
  where message' = trim message
