module DOM.Element
  ( module Exports
  , class IsElement
  , Element
  , setAttribute
  , tagName
  , removeAttribute
  ) where

import MasonPrelude
import DOM.ChildNode (class IsChildNode)
import DOM.Node (class IsEventTarget, class IsNode)
import DOM.NonDocumentTypeChildNode (class IsNonDocumentTypeChildNode)
import DOM.ParentNode (class IsParentNode)
import DOM.Slottable (class IsSlottable)
-- EXPORTS
import DOM.ChildNode as Exports
import DOM.Node as Exports
import DOM.NonDocumentTypeChildNode as Exports
import DOM.ParentNode as Exports
import DOM.Slottable as Exports

class (IsChildNode a, IsNode a, IsNonDocumentTypeChildNode a, IsParentNode a, IsSlottable a) <= IsElement a

data Element

instance childNode :: IsChildNode Element

instance eventTarget :: IsEventTarget Element

instance element :: IsElement Element

instance node :: IsNode Element

instance nonDocumentTypeChildNode :: IsNonDocumentTypeChildNode Element

instance parentNode :: IsParentNode Element

instance slottable :: IsSlottable Element

{-
interface Element : Node {
  readonly attribute DOMString? namespaceURI;
  readonly attribute DOMString? prefix;
  readonly attribute DOMString localName;
-}
-- readonly attribute DOMString tagName;
foreign import tagName :: ∀ a. IsElement a => a -> Effect String

{-

  [CEReactions] attribute DOMString id;
  [CEReactions] attribute DOMString className;
  [SameObject, PutForwards=value] readonly attribute DOMTokenList classList;
  [CEReactions, Unscopable] attribute DOMString slot;

  boolean hasAttributes();
  [SameObject] readonly attribute NamedNodeMap attributes;
  sequence<DOMString> getAttributeNames();
  DOMString? getAttribute(DOMString qualifiedName);
  DOMString? getAttributeNS(DOMString? namespace, DOMString localName);
-}
-- [CEReactions] undefined setAttribute(DOMString qualifiedName, DOMString value);
foreign import setAttribute :: ∀ a. IsElement a => String -> String -> a -> Effect Unit

{-
  [CEReactions] undefined setAttributeNS(DOMString? namespace, DOMString qualifiedName, DOMString value);
-}
-- [CEReactions] undefined removeAttribute(DOMString qualifiedName);
foreign import removeAttribute :: ∀ a. IsElement a => String -> a -> Effect Unit

{-
  [CEReactions] undefined removeAttributeNS(DOMString? namespace, DOMString localName);
  [CEReactions] boolean toggleAttribute(DOMString qualifiedName, optional boolean force);
  boolean hasAttribute(DOMString qualifiedName);
  boolean hasAttributeNS(DOMString? namespace, DOMString localName);

  Attr? getAttributeNode(DOMString qualifiedName);
  Attr? getAttributeNodeNS(DOMString? namespace, DOMString localName);
  [CEReactions] Attr? setAttributeNode(Attr attr);
  [CEReactions] Attr? setAttributeNodeNS(Attr attr);
  [CEReactions] Attr removeAttributeNode(Attr attr);

  ShadowRoot attachShadow(ShadowRootInit init);
  readonly attribute ShadowRoot? shadowRoot;

  Element? closest(DOMString selectors);
  boolean matches(DOMString selectors);
  boolean webkitMatchesSelector(DOMString selectors); // historical alias of .matches

  HTMLCollection getElementsByTagName(DOMString qualifiedName);
  HTMLCollection getElementsByTagNameNS(DOMString? namespace, DOMString localName);
  HTMLCollection getElementsByClassName(DOMString classNames);

  [CEReactions] Element? insertAdjacentElement(DOMString where, Element element); // historical
  undefined insertAdjacentText(DOMString where, DOMString data); // historical
};

dictionary ShadowRootInit {
  required ShadowRootMode mode;
  boolean delegatesFocus = false;
};
-}
