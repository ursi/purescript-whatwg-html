module WHATWG.DOM.Text
  ( module WHATWG.HTML.Types
  , new
  ) where

import MasonPrelude
import WHATWG.HTML.Types
  ( class IsText
  , class MaybeText
  , Text
  , toMaybeText
  )

-- constructor(optional DOMString data = "");
foreign import new :: String -> Effect Text

{-
interface Text : CharacterData {

  [NewObject] Text splitText(unsigned long offset);
  readonly attribute DOMString wholeText;
};
-}
