module Main where

import Commands.Completion qualified as Completion
import Commands.New qualified as New
import Parse.Format qualified as Format

main :: IO ()
main = do
  task <- New.createTask "Hello World" Nothing
  putStrLn $ show task
  putStrLn $ Format.forDisplay task
  putStrLn $ Format.forFile task
  let task2 = Completion.completeTask task
  putStrLn $ Format.forDisplay task2