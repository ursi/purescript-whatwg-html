module DOM.Node.Types
  ( class IsNode
  , class ToNode
  , toNode
  , Node
  ) where

import MasonPrelude
import DOM.EventTarget.Types (class IsEventTarget, EventTarget)
import Util (unsafeConvert)

class IsEventTarget a <= IsNode a

data Node

instance eventTarget :: IsEventTarget Node

instance node :: IsNode Node

class ToNode a where
  toNode :: a -> Maybe Node

instance toNodeEventTarget :: ToNode EventTarget where
  toNode = unsafeConvert "Node"
