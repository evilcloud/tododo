module Commands.New (createTask) where

import Data.Time.Clock (getCurrentTime, utctDay)
import qualified Task.Generate as Generate
import Task.Model (Task (..))
import qualified Task.Parse as Parse

createTask :: String -> Maybe String -> IO Task
createTask title maybeDateString = do
  taskId <- Generate.taskId
  day <- case Parse.day maybeDateString of
    Just d -> return d
    Nothing -> fmap utctDay getCurrentTime
  return
    Task
      { taskId = taskId,
        date = day,
        completed = False,
        title = title
      }
