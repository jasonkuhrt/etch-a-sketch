module Main where

import Prelude
import Data.Maybe (Maybe(Just))
import Control.Monad.Eff (Eff)
import Graphics.Drawing
import Graphics.Canvas


-- main :: forall a. Partial =>  Eff (canvas :: Canvas | a) Unit
main = do
  Just canvas <- getCanvasElementById "canvas"
  ctx <- getContext2D canvas
  render ctx shape

  where
  shape = filled (fillColor (hsl 30.0 1.0 0.5)) (circle 40.0 40.0 40.0)
