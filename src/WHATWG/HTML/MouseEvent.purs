module WHATWG.HTML.MouseEvent
  ( module WHATWG.HTML.Types
  , clientX
  , clientY
  , screenX
  , screenY
  ) where

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
screenX :: MouseEvent -> Int
screenX = I.unsafeGetPure "screenX"

-- readonly attribute long screenY;
screenY :: MouseEvent -> Int
screenY = I.unsafeGetPure "screenY"

-- readonly attribute long clientX;
clientX :: MouseEvent -> Int
clientX = I.unsafeGetPure "clientX"

-- readonly attribute long clientY;
clientY :: MouseEvent -> Int
clientY = I.unsafeGetPure "clientY"

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
