module HTML.HTMLElement.Types
  ( class IsHTMLElement
  , class ToHTMLElement
  , toHTMLElement
  , HTMLElement
  ) where

import MasonPrelude
import DOM.ChildNode (class ChildNode)
import DOM.Element (class IsElement, Element)
import DOM.EventTarget (class IsEventTarget, EventTarget)
import DOM.Node (class IsNode, Node)
import DOM.NonDocumentTypeChildNode (class NonDocumentTypeChildNode)
import DOM.ParentNode (class ParentNode)
import DOM.Slottable (class Slottable)
import HTML.ElementContentEditable (class ElementContentEditable)
import HTML.HTMLOrSVGElement (class HTMLOrSVGElement)
import Util (unsafeConvert)

class
  ( IsElement a
  , ElementContentEditable a
  , HTMLOrSVGElement a
  ) <= IsHTMLElement a

data HTMLElement

instance childNode :: ChildNode HTMLElement

instance eventTarget :: IsEventTarget HTMLElement

instance element :: IsElement HTMLElement

instance elementContentEditable :: ElementContentEditable HTMLElement

instance htmlElement :: IsHTMLElement HTMLElement

instance htmlOrSVGElement :: HTMLOrSVGElement HTMLElement

instance node :: IsNode HTMLElement

instance nonDocumentTypeChildNode :: NonDocumentTypeChildNode HTMLElement

instance parentNode :: ParentNode HTMLElement

instance slottable :: Slottable HTMLElement

class ToHTMLElement a where
  toHTMLElement :: a -> Maybe HTMLElement

toHTMLElement' :: ∀ a. a -> Maybe HTMLElement
toHTMLElement' = unsafeConvert "HTMLElement"

instance toHTMLElementEventTarget :: ToHTMLElement EventTarget where
  toHTMLElement = toHTMLElement'

instance toHTMLElementNode :: ToHTMLElement Node where
  toHTMLElement = toHTMLElement'

instance toHTMLElementElement :: ToHTMLElement Element where
  toHTMLElement = toHTMLElement'
