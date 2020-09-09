module DOM.Text (module HTML.Types) where

import HTML.Types
  ( class IsText
  , class MaybeText
  , Text
  , toMaybeText
  )

{-
interface Text : CharacterData {
  constructor(optional DOMString data = "");

  [NewObject] Text splitText(unsigned long offset);
  readonly attribute DOMString wholeText;
};
-}
