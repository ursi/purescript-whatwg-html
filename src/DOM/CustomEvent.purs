module DOM.CustomEvent
  ( module DOM.Event
  , class IsCustomEvent
  ) where

import DOM.Event

class IsEvent a <= IsCustomEvent a

{-
interface CustomEvent : Event {
  constructor(DOMString type, optional CustomEventInit eventInitDict = {});

  readonly attribute any detail;

  undefined initCustomEvent(DOMString type, optional boolean bubbles = false, optional boolean cancelable = false, optional any detail = null); // historical
};

dictionary CustomEventInit : EventInit {
  any detail = null;
};
-}
