module HTML.HTMLElement
  ( module Exports
  , class IsHTMLElement
  , HTMLElement
  ) where

import DOM.Element
  ( class IsChildNode
  , class IsElement
  , class IsEventTarget
  , class IsNode
  , class IsNonDocumentTypeChildNode
  , class IsParentNode
  , class IsSlottable
  )
import HTML.ElementContentEditable (class IsElementContentEditable)
import HTML.HTMLOrSVGElement (class IsHTMLOrSVGElement)
-- EXPORTS
import DOM.Element as Exports
import HTML.ElementContentEditable as Exports
import HTML.HTMLOrSVGElement as Exports

class
  ( IsElement a
  , IsElementContentEditable a
  , IsHTMLOrSVGElement a
  ) <= IsHTMLElement a

data HTMLElement

instance childNode :: IsChildNode HTMLElement

instance eventTarget :: IsEventTarget HTMLElement

instance element :: IsElement HTMLElement

instance elementContentEditable :: IsElementContentEditable HTMLElement

instance htmlElement :: IsHTMLElement HTMLElement

instance htmlOrSVGElement :: IsHTMLOrSVGElement HTMLElement

instance node :: IsNode HTMLElement

instance nonDocumentTypeChildNode :: IsNonDocumentTypeChildNode HTMLElement

instance parentNode :: IsParentNode HTMLElement

instance slottable :: IsSlottable HTMLElement

{-
interface HTMLElement : Element {
  [HTMLConstructor] constructor();

  // metadata attributes
  [CEReactions] attribute DOMString title;
  [CEReactions] attribute DOMString lang;
  [CEReactions] attribute boolean translate;
  [CEReactions] attribute DOMString dir;

  // user interaction
  [CEReactions] attribute boolean hidden;
  undefined click();
  [CEReactions] attribute DOMString accessKey;
  readonly attribute DOMString accessKeyLabel;
  [CEReactions] attribute boolean draggable;
  [CEReactions] attribute boolean spellcheck;
  [CEReactions] attribute DOMString autocapitalize;

  [CEReactions] attribute [LegacyNullToEmptyString] DOMString innerText;

  ElementInternals attachInternals();
};

HTMLElement includes GlobalEventHandlers;
HTMLElement includes DocumentAndElementEventHandlers;
HTMLElement includes ElementContentEditable;
HTMLElement includes HTMLOrSVGElement;

[Exposed=Window]
interface HTMLUnknownElement : HTMLElement {
  // Note: intentionally no [HTMLConstructor]
};
-}
