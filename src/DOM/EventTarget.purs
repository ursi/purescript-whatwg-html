module DOM.EventTarget
  ( module Exports
  , AddEventListenerOptions
  , EventListenerOptions
  , addEventListener
  , dispatchEvent
  , removeEventListener
  ) where

import MasonPrelude
import HTML.Types (class IsEvent, class IsEventTarget, Event)
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
  ∀ a b r.
  IsEventTarget a =>
  Optional AddEventListenerOptions r =>
  String ->
  (EffectFn1 Event b) ->
  Record r ->
  a ->
  Effect Unit

-- undefined removeEventListener(DOMString type, EventListener? callback, optional (EventListenerOptions or boolean) options = {});
foreign import removeEventListener ::
  ∀ a b r.
  IsEventTarget a =>
  Optional EventListenerOptions r =>
  String ->
  (EffectFn1 Event b) ->
  Record r ->
  a ->
  Effect Unit

-- boolean dispatchEvent(Event event);
foreign import dispatchEvent :: ∀ a b. IsEvent a => IsEventTarget b => a -> b -> Effect Boolean
