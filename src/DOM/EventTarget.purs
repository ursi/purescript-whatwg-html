module DOM.EventTarget where

import MasonPrelude
import DOM.Event (class IsEvent)
import Optional (class Optional)
import Prim.Row (class Union)

class IsEventTarget a

type EventListenerOptionsR
  = ( capture :: Boolean )

type AddEventListenerOptionsR
  = ( passive :: Boolean
    , once :: Boolean
    )

class EventListenerOptions (r :: # Type)

instance eventListenerOptions :: Optional EventListenerOptionsR r => EventListenerOptions r

class AddEventListenerOptions (r :: # Type)

instance addEventListenerOptions :: (Union EventListenerOptionsR AddEventListenerOptionsR u, Optional u r) => AddEventListenerOptions r

-- undefined addEventListener(DOMString type, EventListener? callback, optional (AddEventListenerOptions or boolean) options = {});
foreign import addEventListener ::
  ∀ a b c r.
  IsEventTarget a =>
  IsEvent b =>
  AddEventListenerOptions r =>
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
  EventListenerOptions r =>
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
