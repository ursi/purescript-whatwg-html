module WHATWG.DOM.EventTarget
  ( module Exports
  , AddEventListenerOptions
  , EventListenerOptions
  , addEventListener
  , dispatchEvent
  , removeEventListener
  ) where

import MasonPrelude
import FFIOptions (class FFIOptions)
import WHATWG.HTML.Types (class IsEvent, class IsEventTarget, Event)
import WHATWG.HTML.Types (class IsEventTarget, EventTarget, toEventTarget) as Exports

type EventListenerOptions
  = ( capture :: Boolean )

type AddEventListenerOptions
  = ( passive :: Boolean
    , once :: Boolean
    | EventListenerOptions
    )

-- | `EffectFn1` is used because to use `removeEventListener`, the functions need to be referentially equal.
-- undefined addEventListener(DOMString type, EventListener? callback, optional (AddEventListenerOptions or boolean) options = {});
foreign import addEventListenerImpl ::
  ∀ a b r.
  String ->
  (EffectFn1 Event b) ->
  r ->
  a ->
  Effect Unit

addEventListener ::
  ∀ a b r.
  IsEventTarget a =>
  FFIOptions () AddEventListenerOptions r =>
  String ->
  (EffectFn1 Event b) ->
  r ->
  a ->
  Effect Unit
addEventListener = addEventListenerImpl

-- undefined removeEventListener(DOMString type, EventListener? callback, optional (EventListenerOptions or boolean) options = {});
foreign import removeEventListenerImpl ::
  ∀ a b r.
  String ->
  (EffectFn1 Event b) ->
  r ->
  a ->
  Effect Unit

removeEventListener ::
  ∀ a b r.
  IsEventTarget a =>
  FFIOptions () EventListenerOptions r =>
  String ->
  (EffectFn1 Event b) ->
  r ->
  a ->
  Effect Unit
removeEventListener = removeEventListenerImpl

-- boolean dispatchEvent(Event event);
foreign import dispatchEventImpl :: ∀ a b. a -> b -> Effect Boolean

dispatchEvent :: ∀ a b. IsEvent a => IsEventTarget b => a -> b -> Effect Boolean
dispatchEvent = dispatchEventImpl
