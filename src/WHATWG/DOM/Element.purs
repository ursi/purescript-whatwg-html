module WHATWG.DOM.Element
  ( module Exports
  , classList
  , clientHeight
  , removeAttribute
  , scrollHeight
  , setAttribute
  , tagName
  ) where

import MasonPrelude
import WHATWG.Internal as I
import WHATWG.HTML.Types (class IsElement, DOMTokenList)
import WHATWG.HTML.Types
  ( class IsElement
  , class MaybeElement
  , Element
  , toElement
  , toMaybeElement
  )
  as Exports

{-
interface Element : Node {
  readonly attribute DOMString? namespaceURI;
  readonly attribute DOMString? prefix;
  readonly attribute DOMString localName;
-}
-- readonly attribute DOMString tagName;
tagName :: ∀ a. IsElement a => a -> String
tagName = I.unsafeGetPure "tagName"

{-

  [CEReactions] attribute DOMString id;
  [CEReactions] attribute DOMString className;
-}
-- [SameObject, PutForwards=value] readonly attribute DOMTokenList classList;
classList :: ∀ a. IsElement a => a -> Effect DOMTokenList
classList = I.unsafeGet "classList"

{-
  [CEReactions, Unscopable] attribute DOMString slot;

  boolean hasAttributes();
  [SameObject] readonly attribute NamedNodeMap attributes;
  sequence<DOMString> getAttributeNames();
  DOMString? getAttribute(DOMString qualifiedName);
  DOMString? getAttributeNS(DOMString? namespace, DOMString localName);
-}
-- [CEReactions] undefined setAttribute(DOMString qualifiedName, DOMString value);
foreign import setAttributeImpl :: ∀ a. String -> String -> a -> Effect Unit

setAttribute :: ∀ a. IsElement a => String -> String -> a -> Effect Unit
setAttribute = setAttributeImpl

{-
  [CEReactions] undefined setAttributeNS(DOMString? namespace, DOMString qualifiedName, DOMString value);
-}
-- [CEReactions] undefined removeAttribute(DOMString qualifiedName);
foreign import removeAttributeImpl :: ∀ a. String -> a -> Effect Unit

removeAttribute :: ∀ a. IsElement a => String -> a -> Effect Unit
removeAttribute = removeAttributeImpl

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
-- https://www.w3.org/TR/cssom-view/#extension-to-the-element-interface
{-
enum ScrollLogicalPosition { "start", "center", "end", "nearest" };
dictionary ScrollIntoViewOptions : ScrollOptions {
  ScrollLogicalPosition block = "center";
  ScrollLogicalPosition inline = "center";
};

partial interface Element {
  sequence<DOMRect> getClientRects();
  [NewObject] DOMRect getBoundingClientRect();
  void scrollIntoView();
  void scrollIntoView((boolean or object) arg);
  void scroll(optional ScrollToOptions options);
  void scroll(unrestricted double x, unrestricted double y);
  void scrollTo(optional ScrollToOptions options);
  void scrollTo(unrestricted double x, unrestricted double y);
  void scrollBy(optional ScrollToOptions options);
  void scrollBy(unrestricted double x, unrestricted double y);
  attribute unrestricted double scrollTop;
  attribute unrestricted double scrollLeft;
  readonly attribute long scrollWidth;
-}
-- readonly attribute long scrollHeight;
scrollHeight :: ∀ a. IsElement a => a -> Effect Int
scrollHeight = I.unsafeGet "scrollHeight"

{-
  readonly attribute long clientTop;
  readonly attribute long clientLeft;
  readonly attribute long clientWidth;
};
-}
-- readonly attribute long clientHeight;
clientHeight :: ∀ a. IsElement a => a -> Effect Int
clientHeight = I.unsafeGet "clientHeight"
