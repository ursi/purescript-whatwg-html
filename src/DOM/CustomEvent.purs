module DOM.CustomEvent (module DOM.CustomEvent.Types) where

import DOM.CustomEvent.Types (class IsCustomEvent, class ToCustomEvent, CustomEvent, toCustomEvent)

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
