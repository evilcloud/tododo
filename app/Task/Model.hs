module Task.Model where

import Config.Assets
import Data.Time.Calendar (Day)
import Task.Generate (TaskId)
import qualified Task.Parse as Parse

data Task = Task
  { taskId :: TaskId,
    date :: Day,
    title :: String,
    completed :: Bool
  }

instance Eq Task where
  (Task {date = date1}) == (Task {date = date2}) = date1 == date2

instance Show Task where
  show (Task {taskId = taskId, date = date, title = title, completed = completed}) =
    "\n"
      ++ show date
      ++ spacing
      ++ taskId
      ++ spacing
      ++ Parse.completed completed
      ++ spacing
      ++ title
      ++ "\n"
