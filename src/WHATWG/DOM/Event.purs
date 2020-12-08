module WHATWG.DOM.Event
  ( module Exports
  , EventInit
  , new
  , preventDefault
  , target
  , unsafeTarget
  ) where

import MasonPrelude
import Data.Nullable (Nullable)
import Data.Nullable as Nullable
import FFIOptions (class FFIOptions)
import WHATWG.HTML.Types (class IsEvent, Event, EventTarget)
import WHATWG.HTML.Types (class IsEvent, Event, toEvent) as Exports
import WHATWG.Internal as I

type EventInit
  = ( bubbles :: Boolean
    , cancelable :: Boolean
    , composed :: Boolean
    )

-- constructor(DOMString type, optional EventInit eventInitDict = {});
foreign import new :: ∀ r. FFIOptions () EventInit r => String -> Record r -> Effect Event

{-
interface Event {

  readonly attribute DOMString type;
-}
-- readonly attribute EventTarget? target;
targetNullable :: ∀ a. IsEvent a => a -> Nullable EventTarget
targetNullable = I.unsafeGetPure "target"

target :: ∀ a. IsEvent a => a -> Maybe EventTarget
target = Nullable.toMaybe <. targetNullable

unsafeTarget :: ∀ a. IsEvent a => a -> EventTarget
unsafeTarget = unsafeCoerce <. targetNullable

{-
  readonly attribute EventTarget? srcElement; // historical
  readonly attribute EventTarget? currentTarget;
  sequence<EventTarget> composedPath();

  const unsigned short NONE = 0;
  const unsigned short CAPTURING_PHASE = 1;
  const unsigned short AT_TARGET = 2;
  const unsigned short BUBBLING_PHASE = 3;
  readonly attribute unsigned short eventPhase;

  undefined stopPropagation();
           attribute boolean cancelBubble; // historical alias of .stopPropagation
  undefined stopImmediatePropagation();

  readonly attribute boolean bubbles;
  readonly attribute boolean cancelable;
           attribute boolean returnValue;  // historical
  -}
-- undefined preventDefault();
foreign import preventDefault :: ∀ a. IsEvent a => a -> Effect Unit

{-
  readonly attribute boolean defaultPrevented;
  readonly attribute boolean composed;

  [LegacyUnforgeable] readonly attribute boolean isTrusted;
  readonly attribute DOMHighResTimeStamp timeStamp;

  undefined initEvent(DOMString type, optional boolean bubbles = false, optional boolean cancelable = false); // historical
};
-}
