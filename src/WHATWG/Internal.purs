module WHATWG.Internal
  ( unsafeConvert
  , unsafeGet
  , unsafeGetPure
  , unsafeSet
  ) where

import MasonPrelude

foreign import instanceof :: ∀ a. a -> String -> Boolean

unsafeConvert :: ∀ a b. String -> a -> Maybe b
unsafeConvert constructor value =
  if value `instanceof` constructor then
    Just $ unsafeCoerce value
  else
    Nothing

foreign import unsafeGet :: ∀ a b. String -> a -> Effect b

foreign import unsafeGetPure :: ∀ a b. String -> a -> b

foreign import unsafeSet :: ∀ value object. String -> value -> object -> Effect Unit
