module DOM.Event
  ( module DOM.Event.Types
  , target
  , unsafeTarget
  ) where

import MasonPrelude
import Data.Nullable (Nullable)
import Data.Nullable as Nullable
import DOM.Event.Types (class IsEvent, Event)
import DOM.EventTarget.Types (EventTarget)

{-
interface Event {
  constructor(DOMString type, optional EventInit eventInitDict = {});

  readonly attribute DOMString type;
-}
-- readonly attribute EventTarget? target;
foreign import targetImpl :: ∀ a. a -> Effect (Nullable EventTarget)

target :: ∀ a. IsEvent a => a -> Effect (Maybe EventTarget)
target = map Nullable.toMaybe <. targetImpl

unsafeTarget :: ∀ a. IsEvent a => a -> Effect EventTarget
unsafeTarget = map unsafeCoerce <. targetImpl

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
  undefined preventDefault();
  readonly attribute boolean defaultPrevented;
  readonly attribute boolean composed;

  [LegacyUnforgeable] readonly attribute boolean isTrusted;
  readonly attribute DOMHighResTimeStamp timeStamp;

  undefined initEvent(DOMString type, optional boolean bubbles = false, optional boolean cancelable = false); // historical
};

dictionary EventInit {
  boolean bubbles = false;
  boolean cancelable = false;
  boolean composed = false;
};
-}
