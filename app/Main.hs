module Main where

import Parse.Format qualified as Format
import Task.Constructor qualified as Constructor

main :: IO ()
main = do
  task <- Constructor.newTask "Hello World" Nothing
  putStrLn $ show task
  putStrLn $ Format.forDisplay task
  putStrLn $ Format.forFile task