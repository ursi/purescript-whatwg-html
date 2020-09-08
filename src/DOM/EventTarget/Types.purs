module DOM.EventTarget.Types
  ( class IsEventTarget
  , EventTarget
  ) where

class IsEventTarget a

data EventTarget

instance eventTarget :: IsEventTarget EventTarget
