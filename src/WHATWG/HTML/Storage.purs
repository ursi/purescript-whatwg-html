-- | https://html.spec.whatwg.org/multipage/webstorage.html#the-storage-interface
module WHATWG.HTML.Storage
  ( module Exports
  , getItem
  , setItem
  , removeItem
  ) where

import MasonPrelude

import Data.Nullable (Nullable)
import Data.Nullable as Nullable
import WHATWG.HTML.Types (Storage)
import WHATWG.HTML.Types (Storage) as Exports

{-
interface Storage {
  readonly attribute unsigned long length;
  DOMString? key(unsigned long index);
-}

foreign import getItemImpl :: String -> Storage -> Effect (Nullable String)

-- | `getter DOMString? getItem(DOMString key);`
getItem :: String -> Storage -> Effect (Maybe String)
getItem = getItemImpl ..> map Nullable.toMaybe

-- | `setter undefined setItem(DOMString key, DOMString value);`
foreign import setItem :: String -> String -> Storage -> Effect Unit

-- | `deleter undefined removeItem(DOMString key);`
foreign import removeItem :: String -> Storage -> Effect Unit

{-
  undefined clear();
};
-}
