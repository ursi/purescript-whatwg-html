module DOM.Event.Types
  ( class IsEvent
  , Event
  ) where

class IsEvent a

data Event

instance event :: IsEvent Event
