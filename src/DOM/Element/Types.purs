module DOM.Element.Types
  ( class IsElement
  , class ToElement
  , toElement
  , Element
  ) where

import MasonPrelude
import DOM.ChildNode (class ChildNode)
import DOM.EventTarget.Types (class IsEventTarget, EventTarget)
import DOM.Node.Types (class IsNode, Node)
import DOM.NonDocumentTypeChildNode (class NonDocumentTypeChildNode)
import DOM.ParentNode (class ParentNode)
import DOM.Slottable (class Slottable)
import Util (unsafeConvert)

class
  ( ChildNode a
  , IsNode a
  , NonDocumentTypeChildNode a
  , ParentNode a
  , Slottable a
  ) <= IsElement a

data Element

instance childNode :: ChildNode Element

instance eventTarget :: IsEventTarget Element

instance element :: IsElement Element

instance node :: IsNode Element

instance nonDocumentTypeChildNode :: NonDocumentTypeChildNode Element

instance parentNode :: ParentNode Element

instance slottable :: Slottable Element

class ToElement a where
  toElement :: a -> Maybe Element

toElement' :: ∀ a. a -> Maybe Element
toElement' = unsafeConvert "Element"

instance toElementEventTarget :: ToElement EventTarget where
  toElement = toElement'

instance toElementNode :: ToElement Node where
  toElement = toElement'
