-- | https://html.spec.whatwg.org/multipage/webstorage.html#the-localstorage-attribute
module WHATWG.HTML.Mixin.LocalStorage where

import MasonPrelude

import WHATWG.HTML.Types (Storage, Window)
import WHATWG.HTML.Window (window')
import WHATWG.Internal as I

-- | `readonly attribute Storage localStorage;`
localStorage :: Window -> Effect Storage
localStorage = I.unsafeGet "localStorage"

localStorage' :: Effect Storage
localStorage' = localStorage window'
