module WHATWG.DOM.Node
  ( module WHATWG.HTML.Types
  , appendChild
  , firstChild
  , insertBefore
  , parentNode
  , removeChild
  , replaceChild
  ) where

import MasonPrelude
import Data.Nullable (Nullable)
import Data.Nullable as Nullable
import WHATWG.HTML.Types
  ( class IsNode
  , class MaybeNode
  , Node
  , toNode
  , toMaybeNode
  )
import WHATWG.Internal as I

{-
interface Node : EventTarget {
  const unsigned short ELEMENT_NODE = 1;
  const unsigned short ATTRIBUTE_NODE = 2;
  const unsigned short TEXT_NODE = 3;
  const unsigned short CDATA_SECTION_NODE = 4;
  const unsigned short ENTITY_REFERENCE_NODE = 5; // historical
  const unsigned short ENTITY_NODE = 6; // historical
  const unsigned short PROCESSING_INSTRUCTION_NODE = 7;
  const unsigned short COMMENT_NODE = 8;
  const unsigned short DOCUMENT_NODE = 9;
  const unsigned short DOCUMENT_TYPE_NODE = 10;
  const unsigned short DOCUMENT_FRAGMENT_NODE = 11;
  const unsigned short NOTATION_NODE = 12; // historical
  readonly attribute unsigned short nodeType;
  readonly attribute DOMString nodeName;

  readonly attribute USVString baseURI;

  readonly attribute boolean isConnected;
  readonly attribute Document? ownerDocument;
  Node getRootNode(optional GetRootNodeOptions options = {});
-}
-- readonly attribute Node? parentNode;
parentNodeNullable :: ∀ a. IsNode a => a -> Effect (Nullable Node)
parentNodeNullable = I.unsafeGet "parentNode"

parentNode :: ∀ a. IsNode a => a -> Effect (Maybe Node)
parentNode = map Nullable.toMaybe <. parentNodeNullable

{-
  readonly attribute Element? parentElement;
  boolean hasChildNodes();
  [SameObject] readonly attribute NodeList childNodes;
-}
-- readonly attribute Node? firstChild;
firstChildNullable :: ∀ a. IsNode a => a -> Effect (Nullable Node)
firstChildNullable = I.unsafeGet "firstChild"

firstChild :: ∀ a. IsNode a => a -> Effect (Maybe Node)
firstChild = map Nullable.toMaybe <. firstChildNullable

{-
  readonly attribute Node? lastChild;
  readonly attribute Node? previousSibling;
  readonly attribute Node? nextSibling;

  [CEReactions] attribute DOMString? nodeValue;
  [CEReactions] attribute DOMString? textContent;
  [CEReactions] undefined normalize();

  [CEReactions, NewObject] Node cloneNode(optional boolean deep = false);
  boolean isEqualNode(Node? otherNode);
  boolean isSameNode(Node? otherNode); // historical alias of ===

  const unsigned short DOCUMENT_POSITION_DISCONNECTED = 0x01;
  const unsigned short DOCUMENT_POSITION_PRECEDING = 0x02;
  const unsigned short DOCUMENT_POSITION_FOLLOWING = 0x04;
  const unsigned short DOCUMENT_POSITION_CONTAINS = 0x08;
  const unsigned short DOCUMENT_POSITION_CONTAINED_BY = 0x10;
  const unsigned short DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 0x20;
  unsigned short compareDocumentPosition(Node other);
  boolean contains(Node? other);

  DOMString? lookupPrefix(DOMString? namespace);
  DOMString? lookupNamespaceURI(DOMString? prefix);
  boolean isDefaultNamespace(DOMString? namespace);
-}
-- [CEReactions] Node insertBefore(Node node, Node? child);
foreign import insertBeforeImpl :: ∀ a b c. a -> b -> c -> Effect a

insertBefore :: ∀ a b c. IsNode a => IsNode b => IsNode c => a -> b -> c -> Effect a
insertBefore = insertBeforeImpl

-- [CEReactions] Node appendChild(Node node);
foreign import appendChildImpl :: ∀ a b. a -> b -> Effect a

appendChild :: ∀ a b. IsNode a => IsNode b => a -> b -> Effect a
appendChild = appendChildImpl

-- [CEReactions] Node replaceChild(Node node, Node child);
foreign import replaceChildImpl :: ∀ a b c. a -> b -> c -> Effect b

replaceChild :: ∀ a b c. IsNode a => IsNode b => IsNode c => a -> b -> c -> Effect b
replaceChild = replaceChildImpl

-- [CEReactions] Node removeChild(Node child);
foreign import removeChildImpl :: ∀ a b. a -> b -> Effect a

removeChild :: ∀ a b. IsNode a => IsNode b => a -> b -> Effect a
removeChild = removeChildImpl

{-
dictionary GetRootNodeOptions {
  boolean composed = false;
};
-}
