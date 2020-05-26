{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_99HaskellProblems (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/ophel/Haskell/99HaskellProblems/.stack-work/install/x86_64-linux/64a5076e3fe94d5b69333661e5866db24f4fbc3ce1e4b2a8aa882ca52033bf01/8.6.5/bin"
libdir     = "/home/ophel/Haskell/99HaskellProblems/.stack-work/install/x86_64-linux/64a5076e3fe94d5b69333661e5866db24f4fbc3ce1e4b2a8aa882ca52033bf01/8.6.5/lib/x86_64-linux-ghc-8.6.5/99HaskellProblems-0.1.0.0-BGwSb6VHdfMHXIj90xvkNd-99HaskellProblems"
dynlibdir  = "/home/ophel/Haskell/99HaskellProblems/.stack-work/install/x86_64-linux/64a5076e3fe94d5b69333661e5866db24f4fbc3ce1e4b2a8aa882ca52033bf01/8.6.5/lib/x86_64-linux-ghc-8.6.5"
datadir    = "/home/ophel/Haskell/99HaskellProblems/.stack-work/install/x86_64-linux/64a5076e3fe94d5b69333661e5866db24f4fbc3ce1e4b2a8aa882ca52033bf01/8.6.5/share/x86_64-linux-ghc-8.6.5/99HaskellProblems-0.1.0.0"
libexecdir = "/home/ophel/Haskell/99HaskellProblems/.stack-work/install/x86_64-linux/64a5076e3fe94d5b69333661e5866db24f4fbc3ce1e4b2a8aa882ca52033bf01/8.6.5/libexec/x86_64-linux-ghc-8.6.5/99HaskellProblems-0.1.0.0"
sysconfdir = "/home/ophel/Haskell/99HaskellProblems/.stack-work/install/x86_64-linux/64a5076e3fe94d5b69333661e5866db24f4fbc3ce1e4b2a8aa882ca52033bf01/8.6.5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "99HaskellProblems_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "99HaskellProblems_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "99HaskellProblems_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "99HaskellProblems_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "99HaskellProblems_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "99HaskellProblems_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
