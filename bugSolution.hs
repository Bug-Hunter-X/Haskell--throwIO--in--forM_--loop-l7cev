{-# LANGUAGE FlexibleContexts #-}

module Main where

import Control.Monad (forM)
import Control.Exception (catch, SomeException)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  result <- forM xs $ \x -> do
    print x
    if x == 3
      then return (Just x)
      else return Nothing
  case result of
    Nothing -> print "Error encountered"
    Just _ -> print "Finished"