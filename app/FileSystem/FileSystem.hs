module FileSystem.FileSystem where

import qualified FileSystem.Convert as Convert

saveFile :: FilePath -> String -> IO ()
saveFile path contents = writeFile path contents

readFile :: FilePath -> IO String
readFile path = do
  convertedPath <- Convert.posixToHaskellPath path
  Prelude.readFile convertedPath
