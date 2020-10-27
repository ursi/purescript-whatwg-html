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

{-
[Constructor(DOMString type, optional MouseEventInit eventInitDict), Exposed=Window]
interface MouseEvent : UIEvent {
-}
-- readonly attribute long screenX;
foreign import screenX :: MouseEvent -> Effect Number

-- readonly attribute long screenY;
foreign import screenY :: MouseEvent -> Effect Number

-- readonly attribute long clientX;
foreign import clientX :: MouseEvent -> Effect Number

-- readonly attribute long clientY;
foreign import clientY :: MouseEvent -> Effect Number

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
