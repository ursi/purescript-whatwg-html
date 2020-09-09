module DOM.EventTarget
  ( module Exports
  , AddEventListenerOptions
  , EventListenerOptions
  , addEventListener
  , removeEventListener
  ) where

import MasonPrelude
import HTML.Types (class IsEvent, class IsEventTarget)
import Optional (class Optional)
import HTML.Types (class IsEventTarget, EventTarget, toEventTarget) as Exports

type EventListenerOptions
  = ( capture :: Boolean )

type AddEventListenerOptions
  = ( passive :: Boolean
    , once :: Boolean
    | EventListenerOptions
    )

-- undefined addEventListener(DOMString type, EventListener? callback, optional (AddEventListenerOptions or boolean) options = {});
foreign import addEventListener ::
  ∀ a b c r.
  IsEventTarget a =>
  IsEvent b =>
  Optional AddEventListenerOptions r =>
  String ->
  (EffectFn1 b c) ->
  Record r ->
  a ->
  Effect Unit

-- undefined removeEventListener(DOMString type, EventListener? callback, optional (EventListenerOptions or boolean) options = {});
foreign import removeEventListener ::
  ∀ a b c r.
  IsEventTarget a =>
  IsEvent b =>
  Optional EventListenerOptions r =>
  String ->
  (EffectFn1 b c) ->
  Record r ->
  a ->
  Effect Unit

{-
interface EventTarget {
  boolean dispatchEvent(Event event);
};
-}
