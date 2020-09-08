module HTML.Document.Types
  ( class IsDocument
  , class ToDocument
  , toDocument
  , Document
  ) where

import MasonPrelude
import DOM.Document as DOM.Document
import DOM.EventTarget.Types (class IsEventTarget, EventTarget)
import DOM.Node.Types (class IsNode, Node)
import DOM.NonElementParentNode (class NonElementParentNode)
import DOM.ParentNode (class ParentNode)
import DOM.XPathEvaluatorBase (class XPathEvaluatorBase)
import HTML.DocumentOrShadowRoot (class DocumentOrShadowRoot)
import Util (unsafeConvert)

class (DOM.Document.IsDocument a, DocumentOrShadowRoot a) <= IsDocument a

data Document

instance document :: IsDocument Document

instance domDocument :: DOM.Document.IsDocument Document

instance documentOrShadowRoot :: DocumentOrShadowRoot Document

instance eventTarget :: IsEventTarget Document

instance node :: IsNode Document

instance nonElementParentNode :: NonElementParentNode Document

instance parentNode :: ParentNode Document

instance xPathEvaluatorBase :: XPathEvaluatorBase Document

class ToDocument a where
  toDocument :: a -> Maybe Document

toDocument' :: ∀ a. a -> Maybe Document
toDocument' = unsafeConvert "HTMLDocument"

instance toDocumentEventTarget :: ToDocument EventTarget where
  toDocument = toDocument'

instance toDocumentNode :: ToDocument Node where
  toDocument = toDocument'
