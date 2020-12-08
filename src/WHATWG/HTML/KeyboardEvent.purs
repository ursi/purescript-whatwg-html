module WHATWG.HTML.KeyboardEvent
  ( module WHATWG.HTML.Types
  , altKey
  , ctrlKey
  , key
  , metaKey
  , shiftKey
  ) where

import WHATWG.HTML.Types
  ( class MaybeKeyboardEvent
  , KeyboardEvent
  , toMaybeKeyboardEvent
  )
import WHATWG.Internal as I

{-
interface KeyboardEvent : UIEvent {
  // KeyLocationCode
  const unsigned long DOM_KEY_LOCATION_STANDARD = 0x00;
  const unsigned long DOM_KEY_LOCATION_LEFT = 0x01;
  const unsigned long DOM_KEY_LOCATION_RIGHT = 0x02;
  const unsigned long DOM_KEY_LOCATION_NUMPAD = 0x03;

-}
-- readonly attribute DOMString key;
key :: KeyboardEvent -> String
key = I.unsafeGetPure "key"

{-
  readonly attribute DOMString code;
  readonly attribute unsigned long location;

-}
-- readonly attribute boolean ctrlKey;
ctrlKey :: KeyboardEvent -> Boolean
ctrlKey = I.unsafeGetPure "ctrlKey"

-- readonly attribute boolean shiftKey;
shiftKey :: KeyboardEvent -> Boolean
shiftKey = I.unsafeGetPure "shiftKey"

-- readonly attribute boolean altKey;
altKey :: KeyboardEvent -> Boolean
altKey = I.unsafeGetPure "altKey"

-- readonly attribute boolean metaKey;
metaKey :: KeyboardEvent -> Boolean
metaKey = I.unsafeGetPure "metaKey"

{-

  readonly attribute boolean repeat;
  readonly attribute boolean isComposing;

  boolean getModifierState(DOMString keyArg);
};
-}
