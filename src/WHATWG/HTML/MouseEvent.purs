module WHATWG.HTML.MouseEvent
  ( module WHATWG.HTML.Types
  , clientX
  , clientY
  , screenX
  , screenY
  ) where

import MasonPrelude
import WHATWG.HTML.Types
  ( class MaybeMouseEvent
  , MouseEvent
  , toMaybeMouseEvent
  )
import WHATWG.Internal as I

{-
[Constructor(DOMString type, optional MouseEventInit eventInitDict), Exposed=Window]
interface MouseEvent : UIEvent {
-}
-- readonly attribute long screenX;
screenX :: MouseEvent -> Effect Number
screenX = I.unsafeGet "screenX"

-- readonly attribute long screenY;
screenY :: MouseEvent -> Effect Number
screenY = I.unsafeGet "screenY"

-- readonly attribute long clientX;
clientX :: MouseEvent -> Effect Number
clientX = I.unsafeGet "clientX"

-- readonly attribute long clientY;
clientY :: MouseEvent -> Effect Number
clientY = I.unsafeGet "clientY"

{-

  readonly attribute boolean ctrlKey;
  readonly attribute boolean shiftKey;
  readonly attribute boolean altKey;
  readonly attribute boolean metaKey;

  readonly attribute short button;
  readonly attribute unsigned short buttons;

  readonly attribute EventTarget? relatedTarget;

  boolean getModifierState(DOMString keyArg);
};
-}
