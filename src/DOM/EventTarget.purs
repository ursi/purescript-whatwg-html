module DOM.EventTarget where

import MasonPrelude
import DOM.Event (class IsEvent)
import Optional (class Optional)
import Prim.Row (class Union)

class IsEventTarget a

data EventTarget

instance eventTarget :: IsEventTarget EventTarget

class EventListenerOptionsR (r :: # Type)

instance eventListenerOptionsR :: (Union () ( capture :: Boolean ) r) => EventListenerOptionsR r

class EventListenerOptions (r :: # Type)

instance eventListenerOptions :: (EventListenerOptionsR o, Optional o r) => EventListenerOptions r

class AddEventListenerOptionsR (r :: # Type)

instance addEventListenerOptionsR ::
  ( EventListenerOptionsR r'
  , Union
      r'
      ( passive :: Boolean
      , once :: Boolean
      )
      r
  ) =>
  AddEventListenerOptionsR r

class AddEventListenerOptions (r :: # Type)

instance addEventListenerOptions :: (AddEventListenerOptionsR o, Optional o r) => AddEventListenerOptions r

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
