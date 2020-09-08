module DOM.Text.Types
  ( class IsText
  , class ToText
  , toText
  , Text
  ) where

import MasonPrelude
import DOM.ChildNode (class ChildNode)
import DOM.CharacterData (class IsCharacterData)
import DOM.EventTarget (class IsEventTarget, EventTarget)
import DOM.Node (class IsNode, Node)
import DOM.NonDocumentTypeChildNode (class NonDocumentTypeChildNode)
import DOM.Slottable (class Slottable)
import Util (unsafeConvert)

class (IsCharacterData a, Slottable a) <= IsText a

data Text

instance childNode :: ChildNode Text

instance eventTarget :: IsEventTarget Text

instance characterData :: IsCharacterData Text

instance node :: IsNode Text

instance nonDocumentTypeChildNode :: NonDocumentTypeChildNode Text

instance text :: IsText Text

instance slottable :: Slottable Text

class ToText a where
  toText :: a -> Maybe Text

toText' :: ∀ a. a -> Maybe Text
toText' = unsafeConvert "Text"

instance toTextEventTarget :: ToText EventTarget where
  toText = toText'

instance toTextNode :: ToText Node where
  toText = toText'
