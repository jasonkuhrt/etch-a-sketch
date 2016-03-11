module Main where

import Prelude (Unit, bind)
import Data.Maybe (Maybe(Just))
import Control.Monad.Eff (Eff)
import Graphics.Drawing
import Graphics.Canvas (getCanvasElementById, getContext2D, Canvas)



main :: forall a. Partial =>  Eff (canvas :: Canvas | a) Unit
main = do
  Just canvas <- getCanvasElementById "canvas"
  ctx <- getContext2D canvas
  render ctx shape

  where
  shape = filled (fillColor black) (circle 1.0 1.0 1.0)
