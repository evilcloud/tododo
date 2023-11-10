module FileSystem.Convert
  ( posixToHaskellPath,
    haskellToPosixPath,
  )
where

import Data.List (isPrefixOf)
import System.Directory (getHomeDirectory)
import System.FilePath.Posix (joinPath, normalise, splitDirectories)

-- Convert POSIX-style path to Haskell FilePath
posixToHaskellPath :: String -> IO FilePath
posixToHaskellPath path = do
  home <- getHomeDirectory
  let path' =
        if "~" `isPrefixOf` path
          then home ++ drop 1 path
          else path
  return $ normalise $ map (\c -> if c == '\\' then '/' else c) path'

-- Convert Haskell FilePath to POSIX-style path
haskellToPosixPath :: FilePath -> String
haskellToPosixPath = joinPath . splitDirectories
