module DOM.Text
  ( module Exports
  , class IsText
  , Text
  ) where

import DOM.ChildNode (class IsChildNode)
import DOM.CharacterData (class IsCharacterData)
import DOM.EventTarget (class IsEventTarget)
import DOM.Node (class IsNode)
import DOM.NonDocumentTypeChildNode (class IsNonDocumentTypeChildNode)
import DOM.Slottable (class IsSlottable)
-- EXPORTS
import DOM.CharacterData as Exports
import DOM.Slottable as Exports

class (IsCharacterData a, IsSlottable a) <= IsText a

data Text

instance childNode :: IsChildNode Text

instance eventTarget :: IsEventTarget Text

instance characterData :: IsCharacterData Text

instance node :: IsNode Text

instance nonDocumentTypeChildNode :: IsNonDocumentTypeChildNode Text

instance text :: IsText Text

instance slottable :: IsSlottable Text

{-
interface Text : CharacterData {
  constructor(optional DOMString data = "");

  [NewObject] Text splitText(unsigned long offset);
  readonly attribute DOMString wholeText;
};
-}
