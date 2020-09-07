module HTML.HTMLElement
  ( module DOM.Element
  , module HTML.ElementContentEditable
  , module HTML.HTMLOrSVGElement
  , class IsHTMLElement
  , HTMLElement
  ) where

import DOM.Element
import HTML.ElementContentEditable
import HTML.HTMLOrSVGElement

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
