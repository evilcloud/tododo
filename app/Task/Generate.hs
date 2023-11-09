module Task.Generate (TaskId, taskId) where

import Control.Monad (replicateM)
import System.Random (randomRIO)

type TaskId = String

-- | Generate a random 'TaskId'
taskId :: IO TaskId
taskId = replicateM 6 $ randomRIO ('a', 'z')
