module Commands.Completion
  ( completeTask,
    uncompleteTask,
    toggleTask,
  )
where

import Task.Model (Task (..))

completeTask :: Task -> Task
completeTask task = task {completed = True}

uncompleteTask :: Task -> Task
uncompleteTask task = task {completed = False}

toggleTask :: Task -> Task
toggleTask task = task {completed = not (completed task)}
