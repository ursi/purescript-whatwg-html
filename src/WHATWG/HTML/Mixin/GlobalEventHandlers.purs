module WHATWG.HTML.Mixin.GlobalEventHandlers
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
import WHATWG.HTML.Types (class GlobalEventHandlers, Event)

foreign import onabortImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onabort :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onabort = onabortImpl

foreign import onauxclickImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onauxclick :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onauxclick = onauxclickImpl

foreign import onblurImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onblur :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onblur = onblurImpl

foreign import oncancelImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

oncancel :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
oncancel = oncancelImpl

foreign import oncanplayImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

oncanplay :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
oncanplay = oncanplayImpl

foreign import oncanplaythroughImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

oncanplaythrough :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
oncanplaythrough = oncanplaythroughImpl

foreign import onchangeImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onchange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onchange = onchangeImpl

foreign import onclickImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onclick :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onclick = onclickImpl

foreign import oncloseImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onclose :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onclose = oncloseImpl

foreign import oncontextmenuImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

oncontextmenu :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
oncontextmenu = oncontextmenuImpl

foreign import oncuechangeImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

oncuechange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
oncuechange = oncuechangeImpl

foreign import ondblclickImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ondblclick :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ondblclick = ondblclickImpl

foreign import ondragImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ondrag :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ondrag = ondragImpl

foreign import ondragendImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ondragend :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ondragend = ondragendImpl

foreign import ondragenterImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ondragenter :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ondragenter = ondragenterImpl

foreign import ondragleaveImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ondragleave :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ondragleave = ondragleaveImpl

foreign import ondragoverImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ondragover :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ondragover = ondragoverImpl

foreign import ondragstartImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ondragstart :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ondragstart = ondragstartImpl

foreign import ondropImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ondrop :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ondrop = ondropImpl

foreign import ondurationchangeImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ondurationchange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ondurationchange = ondurationchangeImpl

foreign import onemptiedImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onemptied :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onemptied = onemptiedImpl

foreign import onendedImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onended :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onended = onendedImpl

foreign import onerrorImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onerror :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onerror = onerrorImpl

foreign import onfocusImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onfocus :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onfocus = onfocusImpl

foreign import onformdataImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onformdata :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onformdata = onformdataImpl

foreign import oninputImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

oninput :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
oninput = oninputImpl

foreign import oninvalidImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

oninvalid :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
oninvalid = oninvalidImpl

foreign import onkeydownImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onkeydown :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onkeydown = onkeydownImpl

foreign import onkeypressImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onkeypress :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onkeypress = onkeypressImpl

foreign import onkeyupImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onkeyup :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onkeyup = onkeyupImpl

foreign import onloadImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onload :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onload = onloadImpl

foreign import onloadeddataImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onloadeddata :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onloadeddata = onloadeddataImpl

foreign import onloadedmetadataImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onloadedmetadata :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onloadedmetadata = onloadedmetadataImpl

foreign import onloadstartImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onloadstart :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onloadstart = onloadstartImpl

foreign import onmousedownImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onmousedown :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onmousedown = onmousedownImpl

foreign import onmouseenterImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onmouseenter :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onmouseenter = onmouseenterImpl

foreign import onmouseleaveImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onmouseleave :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onmouseleave = onmouseleaveImpl

foreign import onmousemoveImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onmousemove :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onmousemove = onmousemoveImpl

foreign import onmouseoutImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onmouseout :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onmouseout = onmouseoutImpl

foreign import onmouseoverImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onmouseover :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onmouseover = onmouseoverImpl

foreign import onmouseupImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onmouseup :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onmouseup = onmouseupImpl

foreign import onpauseImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onpause :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onpause = onpauseImpl

foreign import onplayImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onplay :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onplay = onplayImpl

foreign import onplayingImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onplaying :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onplaying = onplayingImpl

foreign import onprogressImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onprogress :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onprogress = onprogressImpl

foreign import onratechangeImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onratechange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onratechange = onratechangeImpl

foreign import onresetImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onreset :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onreset = onresetImpl

foreign import onresizeImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onresize :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onresize = onresizeImpl

foreign import onscrollImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onscroll :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onscroll = onscrollImpl

foreign import onsecuritypolicyviolationImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onsecuritypolicyviolation :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onsecuritypolicyviolation = onsecuritypolicyviolationImpl

foreign import onseekedImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onseeked :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onseeked = onseekedImpl

foreign import onseekingImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onseeking :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onseeking = onseekingImpl

foreign import onselectImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onselect :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onselect = onselectImpl

foreign import onslotchangeImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onslotchange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onslotchange = onslotchangeImpl

foreign import onstalledImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onstalled :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onstalled = onstalledImpl

foreign import onsubmitImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onsubmit :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onsubmit = onsubmitImpl

foreign import onsuspendImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onsuspend :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onsuspend = onsuspendImpl

foreign import ontimeupdateImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ontimeupdate :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ontimeupdate = ontimeupdateImpl

foreign import ontoggleImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

ontoggle :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
ontoggle = ontoggleImpl

foreign import onvolumechangeImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onvolumechange :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onvolumechange = onvolumechangeImpl

foreign import onwaitingImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onwaiting :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onwaiting = onwaitingImpl

foreign import onwebkitanimationendImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onwebkitanimationend :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onwebkitanimationend = onwebkitanimationendImpl

foreign import onwebkitanimationiterationImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onwebkitanimationiteration :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onwebkitanimationiteration = onwebkitanimationiterationImpl

foreign import onwebkitanimationstartImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onwebkitanimationstart :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onwebkitanimationstart = onwebkitanimationstartImpl

foreign import onwebkittransitionendImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onwebkittransitionend :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onwebkittransitionend = onwebkittransitionendImpl

foreign import onwheelImpl :: ∀ a b. (Event -> Effect b) -> a -> Effect Unit

onwheel :: ∀ a b. GlobalEventHandlers a => (Event -> Effect b) -> a -> Effect Unit
onwheel = onwheelImpl
