module DOM.EventTarget
  ( module DOM.EventTarget.Types
  , AddEventListenerOptions
  , EventListenerOptions
  , addEventListener
  , removeEventListener
  ) where

import MasonPrelude
import DOM.EventTarget.Types (class IsEventTarget, EventTarget)
import DOM.Event (class IsEvent)
import Optional (class Optional)

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
