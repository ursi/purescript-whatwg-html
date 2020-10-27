module WHATWG.DOM.CustomEvent (module WHATWG.HTML.Types) where

import WHATWG.HTML.Types
  ( class IsCustomEvent
  , class MaybeCustomEvent
  , CustomEvent
  , toMaybeCustomEvent
  )

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
