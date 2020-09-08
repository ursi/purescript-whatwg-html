module DOM.Document
  ( module Exports
  , class IsDocument
  , ElementCreationOptions
  , createElement
  , createTextNode
  ) where

import MasonPrelude
import DOM.Element (Element)
import DOM.Node (class IsNode)
import DOM.NonElementParentNode (class IsNonElementParentNode)
import DOM.ParentNode (class IsParentNode)
import DOM.Text (Text)
import DOM.XPathEvaluatorBase (class IsXPathEvaluatorBase)
import Optional (class Optional)
-- EXPORTS
import DOM.Node as Exports
import DOM.NonElementParentNode as Exports
import DOM.ParentNode as Exports
import DOM.XPathEvaluatorBase as Exports

class
  ( IsNode a
  , IsNonElementParentNode a
  , IsParentNode a
  , IsXPathEvaluatorBase a
  ) <= IsDocument a

type ElementCreationOptions
  = ( is :: String )

{-
interface Document : Node {
  constructor();

  [SameObject] readonly attribute DOMImplementation implementation;
  readonly attribute USVString URL;
  readonly attribute USVString documentURI;
  readonly attribute DOMString compatMode;
  readonly attribute DOMString characterSet;
  readonly attribute DOMString charset; // historical alias of .characterSet
  readonly attribute DOMString inputEncoding; // historical alias of .characterSet
  readonly attribute DOMString contentType;

  readonly attribute DocumentType? doctype;
  readonly attribute Element? documentElement;
  HTMLCollection getElementsByTagName(DOMString qualifiedName);
  HTMLCollection getElementsByTagNameNS(DOMString? namespace, DOMString localName);
  HTMLCollection getElementsByClassName(DOMString classNames);

-}
-- [CEReactions, NewObject] Element createElement(DOMString localName, optional (DOMString or ElementCreationOptions) options = {});
foreign import createElementImpl :: ∀ a r. String -> r -> a -> Effect Element

createElement :: ∀ a r. IsDocument a => Optional ElementCreationOptions r => String -> Record r -> a -> Effect Element
createElement = createElementImpl

{-
  [CEReactions, NewObject] Element createElementNS(DOMString? namespace, DOMString qualifiedName, optional (DOMString or ElementCreationOptions) options = {});
  [NewObject] DocumentFragment createDocumentFragment();
-}
-- [NewObject] Text createTextNode(DOMString data);
foreign import createTextNode :: ∀ a. IsDocument a => String -> a -> Effect Text

{-
  [NewObject] CDATASection createCDATASection(DOMString data);
  [NewObject] Comment createComment(DOMString data);
  [NewObject] ProcessingInstruction createProcessingInstruction(DOMString target, DOMString data);

  [CEReactions, NewObject] Node importNode(Node node, optional boolean deep = false);
  [CEReactions] Node adoptNode(Node node);

  [NewObject] Attr createAttribute(DOMString localName);
  [NewObject] Attr createAttributeNS(DOMString? namespace, DOMString qualifiedName);

  [NewObject] Event createEvent(DOMString interface); // historical

  [NewObject] Range createRange();

  // NodeFilter.SHOW_ALL = 0xFFFFFFFF
  [NewObject] NodeIterator createNodeIterator(Node root, optional unsigned long whatToShow = 0xFFFFFFFF, optional NodeFilter? filter = null);
  [NewObject] TreeWalker createTreeWalker(Node root, optional unsigned long whatToShow = 0xFFFFFFFF, optional NodeFilter? filter = null);
};

[Exposed=Window]
interface XMLDocument : Document {};

dictionary ElementCreationOptions {
  DOMString is;
};
-}
