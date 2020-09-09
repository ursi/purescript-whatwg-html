module HTML.Mixin.GlobalEventHandlers
  ( onabort
  , onauxclick
  , onblur
  , oncancel
  , oncanplay
  , oncanplaythrough
  , onchange
  , onclick
  , onclose
  , oncontextmenu
  , oncuechange
  , ondblclick
  , ondrag
  , ondragend
  , ondragenter
  , ondragleave
  , ondragover
  , ondragstart
  , ondrop
  , ondurationchange
  , onemptied
  , onended
  , onerror
  , onfocus
  , onformdata
  , oninput
  , oninvalid
  , onkeydown
  , onkeypress
  , onkeyup
  , onload
  , onloadeddata
  , onloadedmetadata
  , onloadstart
  , onmousedown
  , onmouseenter
  , onmouseleave
  , onmousemove
  , onmouseout
  , onmouseover
  , onmouseup
  , onpause
  , onplay
  , onplaying
  , onprogress
  , onratechange
  , onreset
  , onresize
  , onscroll
  , onsecuritypolicyviolation
  , onseeked
  , onseeking
  , onselect
  , onslotchange
  , onstalled
  , onsubmit
  , onsuspend
  , ontimeupdate
  , ontoggle
  , onvolumechange
  , onwaiting
  , onwebkitanimationend
  , onwebkitanimationiteration
  , onwebkitanimationstart
  , onwebkittransitionend
  , onwheel
  ) where

import MasonPrelude
import HTML.Types (class GlobalEventHandlers, Event)

foreign import onabort :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onauxclick :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onblur :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import oncancel :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import oncanplay :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import oncanplaythrough :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onchange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onclick :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onclose :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import oncontextmenu :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import oncuechange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ondblclick :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ondrag :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ondragend :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ondragenter :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ondragleave :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ondragover :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ondragstart :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ondrop :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ondurationchange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onemptied :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onended :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onerror :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onfocus :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onformdata :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import oninput :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import oninvalid :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onkeydown :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onkeypress :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onkeyup :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onload :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onloadeddata :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onloadedmetadata :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onloadstart :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onmousedown :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onmouseenter :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onmouseleave :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onmousemove :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onmouseout :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onmouseover :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onmouseup :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onpause :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onplay :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onplaying :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onprogress :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onratechange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onreset :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onresize :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onscroll :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onsecuritypolicyviolation :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onseeked :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onseeking :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onselect :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onslotchange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onstalled :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onsubmit :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onsuspend :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ontimeupdate :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import ontoggle :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onvolumechange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onwaiting :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onwebkitanimationend :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onwebkitanimationiteration :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onwebkitanimationstart :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onwebkittransitionend :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit

foreign import onwheel :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
