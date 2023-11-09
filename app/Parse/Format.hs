module Parse.Format
  ( forDisplay,
    forFile,
  )
where

import qualified Config.Assets as Assets
import Task.Model
import qualified Task.Parse as Parse

-- Function that will display Task for Display, which is the same as show, but without the date
forDisplay :: Task -> String
forDisplay (Task {taskId = taskId, title = title, completed = completed}) =
  Parse.completed completed
    ++ Assets.spacing
    ++ taskId
    ++ Assets.spacing
    ++ title

forFile :: Task -> String
forFile (Task {taskId = taskId, date = date, title = title, completed = completed}) =
  show date
    ++ Assets.separator
    ++ taskId
    ++ Assets.separator
    ++ Parse.completed completed
    ++ Assets.separator
    ++ title
