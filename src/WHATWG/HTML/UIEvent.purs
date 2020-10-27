module WHATWG.HTML.UIEvent (module WHATWG.HTML.Types) where

import WHATWG.HTML.Types
  ( class IsUIEvent
  , class MaybeUIEvent
  , UIEvent
  , toUIEvent
  , toMaybeUIEvent
  )

{-
[Constructor(DOMString type, optional UIEventInit eventInitDict), Exposed=Window]
interface UIEvent : Event {
  readonly attribute Window? view;
  readonly attribute long detail;
};
-}
