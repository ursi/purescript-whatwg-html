module DOM.CustomEvent.Types
  ( class IsCustomEvent
  , class ToCustomEvent
  , toCustomEvent
  , CustomEvent
  ) where

import MasonPrelude
import DOM.Event.Types (class IsEvent, Event)
import Util (unsafeConvert)

class IsEvent a <= IsCustomEvent a

data CustomEvent

instance customEvent :: IsCustomEvent CustomEvent

instance event :: IsEvent CustomEvent

class ToCustomEvent a where
  toCustomEvent :: a -> Maybe CustomEvent

instance toCustomEventEvent :: ToCustomEvent Event where
  toCustomEvent = unsafeConvert "CustomEvent"
