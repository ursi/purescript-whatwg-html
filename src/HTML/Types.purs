module HTML.Types
  ( Event
  , class IsEvent
  , class MaybeEvent
  , toEvent
  , CustomEvent
  , class IsCustomEvent
  , class MaybeCustomEvent
  , toMaybeCustomEvent
  , EventTarget
  , class IsEventTarget
  , toEventTarget
  , Node
  , class IsNode
  , class MaybeNode
  , toNode
  , toMaybeNode
  , Document
  , class IsDocument
  , class MaybeDocument
  , toMaybeDocument
  , Element
  , class IsElement
  , class MaybeElement
  , toElement
  , toMaybeElement
  , HTMLElement
  , class IsHTMLElement
  , class MaybeHTMLElement
  , toHTMLElement
  , toMaybeHTMLElement
  , class IsCharacterData
  , Text
  , class IsText
  , class MaybeText
  , toMaybeText
  , Window
  , class IsWindow
  , class MaybeWindow
  , toMaybeWindow
  , class ChildNode
  , class NonDocumentTypeChildNode
  , class NonElementParentNode
  , class ParentNode
  , class Slottable
  , class XPathEvaluatorBase
  , class DocumentOrShadowRoot
  , class ElementContentEditable
  , class GlobalEventHandlers
  , class HTMLOrSVGElement
  ) where

import MasonPrelude
import Util (unsafeConvert)

data Event

class IsEvent a

instance isEventEvent :: IsEvent Event

class MaybeCustomEvent a <= MaybeEvent a

instance maybeEventEvent :: MaybeEvent Event

instance maybeCustomEventEvent :: MaybeCustomEvent Event

toEvent :: ∀ a. IsEvent a => a -> Event
toEvent = unsafeCoerce

data CustomEvent

class IsEvent a <= IsCustomEvent a

instance isEventCustomEvent :: IsEvent CustomEvent

instance isCustomEventCustomEvent :: IsCustomEvent CustomEvent

class MaybeCustomEvent a

instance maybeCustomEventCustomEvent :: MaybeCustomEvent CustomEvent

toMaybeCustomEvent :: ∀ a. MaybeCustomEvent a => a -> Maybe CustomEvent
toMaybeCustomEvent = unsafeConvert "CustomEvent"

data EventTarget

class IsEventTarget a

instance isEventTargetEventTarget :: IsEventTarget EventTarget

toEventTarget :: ∀ a. IsEventTarget a => a -> EventTarget
toEventTarget = unsafeCoerce

data Node

class IsEventTarget a <= IsNode a

instance isEventTargetNode :: IsEventTarget Node

instance isNodeNode :: IsNode Node

class
  ( MaybeDocument a
  , MaybeElement a
  , MaybeText a
  ) <= MaybeNode a

instance maybeNodeNode :: MaybeNode Node

instance maybeDocumentNode :: MaybeDocument Node

instance maybeElementNode :: MaybeElement Node

instance maybeHTMLElementNode :: MaybeHTMLElement Node

instance maybeTextNode :: MaybeText Node

toNode :: ∀ a. IsNode a => a -> Node
toNode = unsafeCoerce

toMaybeNode :: ∀ a. MaybeNode a => a -> Maybe Node
toMaybeNode = unsafeConvert "Node"

data Document

class
  ( IsNode a
  , DocumentOrShadowRoot a
  , GlobalEventHandlers a
  , NonElementParentNode a
  , ParentNode a
  , XPathEvaluatorBase a
  ) <= IsDocument a

instance isEventTargetDocument :: IsEventTarget Document

instance isNodeDocument :: IsNode Document

instance isDocumentDocument :: IsDocument Document

instance documentOrShadowRootDocument :: DocumentOrShadowRoot Document

instance globalEventHandlersDocument :: GlobalEventHandlers Document

instance nonElementParentNodeDocument :: NonElementParentNode Document

instance parentNodeDocument :: ParentNode Document

instance xPathEvaluatorBaseDocument :: XPathEvaluatorBase Document

class MaybeDocument a

instance maybeDocumentDocument :: MaybeDocument Document

toMaybeDocument :: ∀ a. MaybeDocument a => a -> Maybe Document
toMaybeDocument = unsafeConvert "HTMLDocument"

data Element

class
  ( IsNode a
  , ChildNode a
  , NonDocumentTypeChildNode a
  , ParentNode a
  , Slottable a
  ) <= IsElement a

instance isEventTargetElement :: IsEventTarget Element

instance isNodeElement :: IsNode Element

instance isElementElement :: IsElement Element

instance childNodeElement :: ChildNode Element

instance nonDocumentTypeChildNodeElement :: NonDocumentTypeChildNode Element

instance parentNodeElement :: ParentNode Element

instance slottableElement :: Slottable Element

class MaybeHTMLElement a <= MaybeElement a

instance maybeElementElement :: MaybeElement Element

instance maybeHTMLElementElement :: MaybeHTMLElement Element

toElement :: ∀ a. IsElement a => a -> Element
toElement = unsafeCoerce

toMaybeElement :: ∀ a. MaybeElement a => a -> Maybe Element
toMaybeElement = unsafeConvert "Element"

data HTMLElement

class
  ( IsElement a
  , ElementContentEditable a
  , GlobalEventHandlers a
  , HTMLOrSVGElement a
  ) <= IsHTMLElement a

instance isEventTargetHTMLElement :: IsEventTarget HTMLElement

instance isNodeHTMLElement :: IsNode HTMLElement

instance isElementHTMLElement :: IsElement HTMLElement

instance isHTMLElementHTMLElement :: IsHTMLElement HTMLElement

instance childNodeHTMLElement :: ChildNode HTMLElement

instance elementContentEditableHTMLElement :: ElementContentEditable HTMLElement

instance globalEventHandlersHTMLElement :: GlobalEventHandlers HTMLElement

instance hTMLOrSVGElementHTMLElement :: HTMLOrSVGElement HTMLElement

instance nonDocumentTypeChildNodeHTMLElement :: NonDocumentTypeChildNode HTMLElement

instance parentNodeHTMLElement :: ParentNode HTMLElement

instance slottableHTMLElement :: Slottable HTMLElement

class MaybeHTMLElement a

instance maybeHTMLElementHTMLElement :: MaybeHTMLElement HTMLElement

toHTMLElement :: ∀ a. IsHTMLElement a => a -> HTMLElement
toHTMLElement = unsafeCoerce

toMaybeHTMLElement :: ∀ a. MaybeHTMLElement a => a -> Maybe HTMLElement
toMaybeHTMLElement = unsafeConvert "HTMLElement"

class
  ( IsNode a
  , ChildNode a
  , NonDocumentTypeChildNode a
  ) <= IsCharacterData a

data Text

class (IsCharacterData a, Slottable a) <= IsText a

instance isEventTargetText :: IsEventTarget Text

instance isNodeText :: IsNode Text

instance isCharacterDataText :: IsCharacterData Text

instance childNodeText :: ChildNode Text

instance nonDocumentTypeChildNodeText :: NonDocumentTypeChildNode Text

instance slottableText :: Slottable Text

class MaybeText a

instance maybeTextText :: MaybeText Text

toMaybeText :: ∀ a. MaybeText a => a -> Maybe Text
toMaybeText = unsafeConvert "Text"

data Window

class
  ( IsEventTarget a
  , GlobalEventHandlers a
  ) <= IsWindow a

instance isEventTargetWindow :: IsEventTarget Window

instance isWindowWindow :: IsWindow Window

instance globalEventHandlersWindow :: GlobalEventHandlers Window

class MaybeWindow a

instance maybeWindowWindow :: MaybeWindow Window

toMaybeWindow :: ∀ a. MaybeWindow a => a -> Maybe Window
toMaybeWindow = unsafeConvert "Window"

-- Mixins
class ChildNode a

class NonDocumentTypeChildNode a

class NonElementParentNode a

class ParentNode a

class Slottable a

class XPathEvaluatorBase a

class DocumentOrShadowRoot a

class ElementContentEditable a

class GlobalEventHandlers a

class HTMLOrSVGElement a
