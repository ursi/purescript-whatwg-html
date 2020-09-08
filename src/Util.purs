module Util (unsafeConvert) where

import MasonPrelude

foreign import instanceof :: ∀ a. a -> String -> Boolean

unsafeConvert :: ∀ a b. String -> a -> Maybe b
unsafeConvert constructor value =
  if value `instanceof` constructor then
    Just $ unsafeCoerce value
  else
    Nothing
