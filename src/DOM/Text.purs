module DOM.Text
  ( module DOM.Text.Types
  ) where

import DOM.Text.Types
  ( class IsText
  , class ToText
  , Text
  , toText
  )

{-
interface Text : CharacterData {
  constructor(optional DOMString data = "");

  [NewObject] Text splitText(unsigned long offset);
  readonly attribute DOMString wholeText;
};
-}
