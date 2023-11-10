module Config.Settings
  ( paths,
    assets,
  )
where

data Paths = Paths
  { config :: String,
    tododo :: String,
    refuse :: String
  }
  deriving (Show)

paths :: Paths
paths =
  Paths
    { config = "~/src/tododo/test/config.yaml",
      tododo = "~/src/tododo/test/tododo.txt",
      refuse = "~/src/tododo/test/refuse.txt"
    }

data Assets = Assets
  { spacer :: String,
    separator :: String
  }
  deriving (Show)

assets :: Assets
assets =
  Assets
    { spacer = "  ",
      separator = "  |  "
    }