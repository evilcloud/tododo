module Task.Parse
  ( day,
    completed,
  )
where

import Data.Time.Calendar (Day)
import Data.Time.Format (defaultTimeLocale, parseTimeM)

day :: Maybe String -> Maybe Day
day maybeDateString =
  maybeDateString >>= parseTimeM True defaultTimeLocale "%Y-%m-%d"

completed :: Bool -> String
completed x = if x then "[x]" else "[ ]"
