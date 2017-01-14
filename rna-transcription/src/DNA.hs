module DNA (toRNA) where

transcode :: Char -> Maybe Char
transcode 'G' = Just 'C'
transcode 'C' = Just 'G'
transcode 'T' = Just 'A'
transcode 'A' = Just 'U'
transcode _ = Nothing

toRNA :: String -> Maybe String
toRNA = mapM transcode
