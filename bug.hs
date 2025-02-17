{-# LANGUAGE FlexibleContexts #-}

module Main where

import Control.Monad (forM_)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  forM_ xs $ \x -> do
    print x
    if x == 3
      then return ()
      else throwIO (show x ++ " is not 3")
  print "Finished"