module WHATWG.HTML.InputEvent
  ( module WHATWG.HTML.Types
  , data'
  , isComposing
  , inputType
  ) where

import WHATWG.HTML.Types
  ( class MaybeInputEvent
  , InputEvent
  , toMaybeInputEvent
  )
import WHATWG.Internal as I

import Data.Maybe (Maybe)

{-
interface InputEvent : UIEvent {
  constructor(DOMString type, optional InputEventInit eventInitDict = {});
-}

-- readonly attribute DOMString? data;
data' :: InputEvent -> Maybe String
data' e = I.unsafeConvert "string" (I.unsafeGetPure "data")

-- readonly attribute boolean isComposing;
isComposing :: InputEvent -> Boolean
isComposing = I.unsafeGetPure "isComposing"

-- readonly attribute DOMString inputType;
inputType :: InputEvent -> String
inputType = I.unsafeGetPure "inputType"
