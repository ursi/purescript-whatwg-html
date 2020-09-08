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

class (IsElement a, IsElementContentEditable a, IsHTMLOrSVGElement a) <= IsHTMLElement a

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
