module DOM.CharacterData
  ( module DOM.ChildNode
  , module DOM.Node
  , module DOM.NonDocumentTypeChildNode
  , class IsCharacterData
  ) where

import DOM.ChildNode (class IsChildNode)
import DOM.Node (class IsNode)
import DOM.NonDocumentTypeChildNode (class IsNonDocumentTypeChildNode)

class (IsChildNode a, IsNode a, IsNonDocumentTypeChildNode a) <= IsCharacterData a

{-
interface CharacterData : Node {
  attribute [LegacyNullToEmptyString] DOMString data;
  readonly attribute unsigned long length;
  DOMString substringData(unsigned long offset, unsigned long count);
  undefined appendData(DOMString data);
  undefined insertData(unsigned long offset, DOMString data);
  undefined deleteData(unsigned long offset, unsigned long count);
  undefined replaceData(unsigned long offset, unsigned long count, DOMString data);
};
-}
