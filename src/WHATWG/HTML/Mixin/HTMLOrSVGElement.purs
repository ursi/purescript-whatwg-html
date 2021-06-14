module WHATWG.HTML.Mixin.HTMLOrSVGElement where

import MasonPrelude

import FFIOptions (class FFIOptions)
import WHATWG.HTML.Types (class HTMLOrSVGElement)

type FocusOptions = ( preventScroll :: Boolean )

{-
interface mixin HTMLOrSVGElement {
  [SameObject] readonly attribute DOMStringMap dataset;
  attribute DOMString nonce; // intentionally no [CEReactions]

  [CEReactions] attribute boolean autofocus;
  [CEReactions] attribute long tabIndex;
-}
-- undefined focus(optional FocusOptions options = {});
foreign import focusImpl :: ∀ e r. r -> e -> Effect Unit

focus :: ∀ e r.
  FFIOptions () FocusOptions r
  => HTMLOrSVGElement e
  => r -> e -> Effect Unit
focus = focusImpl
{-
  undefined blur();
};
-}
