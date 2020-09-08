module DOM.CharacterData (class IsCharacterData) where

import DOM.ChildNode (class ChildNode)
import DOM.Node.Types (class IsNode)
import DOM.NonDocumentTypeChildNode (class NonDocumentTypeChildNode)

class
  ( ChildNode a
  , IsNode a
  , NonDocumentTypeChildNode a
  ) <= IsCharacterData a

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
