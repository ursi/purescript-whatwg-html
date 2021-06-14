module WHATWG.DOM.Mixin.NonElementParentNode where

import MasonPrelude

import WHATWG.HTML.Types (class NonElementParentNode, Element)

--  Element? getElementById(DOMString elementId);
foreign import getElementByIdImpl :: ∀ d. String -> d -> Effect Element

getElementById :: ∀ d. NonElementParentNode d => String -> d -> Effect Element
getElementById = getElementByIdImpl
