module DOM.DOMTokenList
  ( module HTML.Types
  , add
  , remove
  ) where

import MasonPrelude
import HTML.Types (DOMTokenList)

{-
interface DOMTokenList {
  readonly attribute unsigned long length;
  getter DOMString? item(unsigned long index);
  boolean contains(DOMString token);
-}
-- [CEReactions] undefined add(DOMString... tokens);
foreign import add :: Array String -> DOMTokenList -> Effect Unit

-- [CEReactions] undefined remove(DOMString... tokens);
foreign import remove :: Array String -> DOMTokenList -> Effect Unit

{-
  [CEReactions] boolean toggle(DOMString token, optional boolean force);
  [CEReactions] boolean replace(DOMString token, DOMString newToken);
  boolean supports(DOMString token);
  [CEReactions] stringifier attribute DOMString value;
  iterable<DOMString>;
};
-}
