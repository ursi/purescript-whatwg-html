-- for each data type T, an instance of IsT and MaybeT must be defined for T so that all required instances can be enforced by the compiler
-- however, certain type classes do not need to be exported because they serve no other purpose, e.g., MaybeEvent and IsMouseEvent
module WHATWG.HTML.Types
  ( DOMTokenList
  , Event
  , class IsEvent
  , toEvent
  , CustomEvent
  , class IsCustomEvent
  , class MaybeCustomEvent
  , toMaybeCustomEvent
  , UIEvent
  , class IsUIEvent
  , class MaybeUIEvent
  , toUIEvent
  , toMaybeUIEvent
  , MouseEvent
  , class MaybeMouseEvent
  , toMaybeMouseEvent
  , EventTarget
  , class IsEventTarget
  , toEventTarget
  , Node
  , class IsNode
  , class MaybeNode
  , toNode
  , toMaybeNode
  , Document
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
  , class MaybeHTMLInputElement
  , HTMLInputElement
  , toMaybeHTMLInputElement
  , class MaybeHTMLTextareaElement
  , HTMLTextareaElement
  , toMaybeHTMLTextareaElement
  , class IsCharacterData
  , Text
  , class IsText
  , class MaybeText
  , toMaybeText
  , Window
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
import WHATWG.Internal (unsafeConvert)

data DOMTokenList

data Event

class IsEvent a

instance isEventEvent :: IsEvent Event

class (MaybeCustomEvent a, MaybeUIEvent a) <= MaybeEvent a

instance maybeEventEvent :: MaybeEvent Event

instance maybeCustomEventEvent :: MaybeCustomEvent Event

instance maybeUIEventEvent :: MaybeUIEvent Event

instance maybeMouseEventEvent :: MaybeMouseEvent Event

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

data UIEvent

class IsEvent a <= IsUIEvent a

instance isEventUIEvent :: IsEvent UIEvent

instance isUIEventUIEvent :: IsUIEvent UIEvent

class MaybeMouseEvent a <= MaybeUIEvent a

instance maybeUIEventUIEvent :: MaybeUIEvent UIEvent

instance maybeMouseEventUIEvent :: MaybeMouseEvent UIEvent

toUIEvent :: ∀ a. IsUIEvent a => a -> UIEvent
toUIEvent = unsafeCoerce

toMaybeUIEvent :: ∀ a. MaybeUIEvent a => a -> Maybe UIEvent
toMaybeUIEvent = unsafeConvert "UIEvent"

data MouseEvent

class IsUIEvent a <= IsMouseEvent a

instance isEventMouseEvent :: IsEvent MouseEvent

instance isUIEventMouseEvent :: IsUIEvent MouseEvent

instance isMouseEventMouseEvent :: IsMouseEvent MouseEvent

class MaybeMouseEvent a

instance maybeMouseEventMouseEvent :: MaybeMouseEvent MouseEvent

toMaybeMouseEvent :: ∀ a. MaybeMouseEvent a => a -> Maybe MouseEvent
toMaybeMouseEvent = unsafeConvert "MouseEvent"

data EventTarget

class IsEventTarget a

instance isEventTargetEventTarget :: IsEventTarget EventTarget

class (MaybeNode a, MaybeWindow a) <= MaybeEventTarget a

instance maybeEventTargetEventTarget :: MaybeEventTarget EventTarget

instance maybeDocumentEventTarget :: MaybeDocument EventTarget

instance maybeElementEventTarget :: MaybeElement EventTarget

instance maybeHTMLElementEventTarget :: MaybeHTMLElement EventTarget

instance maybeHTMLInputElementEventTarget :: MaybeHTMLInputElement EventTarget

instance maybeNodeEventTarget :: MaybeNode EventTarget

instance maybeTextEventTarget :: MaybeText EventTarget

instance maybeWindowEventTarget :: MaybeWindow EventTarget

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

instance maybeHTMLInputElementNode :: MaybeHTMLInputElement Node

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

instance maybeHTMLInputElementElement :: MaybeHTMLInputElement Element

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

class MaybeHTMLInputElement a <= MaybeHTMLElement a

instance maybeHTMLElementHTMLElement :: MaybeHTMLElement HTMLElement

instance maybeHTMLInputElementHTMLElement :: MaybeHTMLInputElement HTMLElement

toHTMLElement :: ∀ a. IsHTMLElement a => a -> HTMLElement
toHTMLElement = unsafeCoerce

toMaybeHTMLElement :: ∀ a. MaybeHTMLElement a => a -> Maybe HTMLElement
toMaybeHTMLElement = unsafeConvert "HTMLElement"

data HTMLInputElement

class IsHTMLElement a <= IsHTMLInputElement a

instance isEventTargetHTMLInputElement :: IsEventTarget HTMLInputElement

instance isNodeHTMLInputElement :: IsNode HTMLInputElement

instance isElementHTMLInputElement :: IsElement HTMLInputElement

instance hTMLElementHTMLInputElement :: IsHTMLElement HTMLInputElement

instance isHTMLInputElementHTMLInputElement :: IsHTMLInputElement HTMLInputElement

instance childNodeHTMLInputElement :: ChildNode HTMLInputElement

instance elementContentEditableHTMLInputElement :: ElementContentEditable HTMLInputElement

instance globalEventHandlersHTMLInputElement :: GlobalEventHandlers HTMLInputElement

instance hTMLOrSVGElementHTMLInputElement :: HTMLOrSVGElement HTMLInputElement

instance nonDocumentTypeChildNodeHTMLInputElement :: NonDocumentTypeChildNode HTMLInputElement

instance parentNodeHTMLInputElement :: ParentNode HTMLInputElement

instance slottableHTMLInputElement :: Slottable HTMLInputElement

class MaybeHTMLInputElement a

instance maybeHTMLInputElementHTMLInputElement :: MaybeHTMLInputElement HTMLInputElement

toMaybeHTMLInputElement :: ∀ a. MaybeHTMLInputElement a => a -> Maybe HTMLInputElement
toMaybeHTMLInputElement = unsafeConvert "HTMLInputElement"

data HTMLTextareaElement

class IsHTMLElement a <= IsHTMLTextareaElement a

instance isEventTargetHTMLTextareaElement :: IsEventTarget HTMLTextareaElement

instance isNodeHTMLTextareaElement :: IsNode HTMLTextareaElement

instance isElementHTMLTextareaElement :: IsElement HTMLTextareaElement

instance hTMLElementHTMLTextareaElement :: IsHTMLElement HTMLTextareaElement

instance isHTMLTextareaElementHTMLTextareaElement :: IsHTMLTextareaElement HTMLTextareaElement

instance childNodeHTMLTextareaElement :: ChildNode HTMLTextareaElement

instance elementContentEditableHTMLTextareaElement :: ElementContentEditable HTMLTextareaElement

instance globalEventHandlersHTMLTextareaElement :: GlobalEventHandlers HTMLTextareaElement

instance hTMLOrSVGElementHTMLTextareaElement :: HTMLOrSVGElement HTMLTextareaElement

instance nonDocumentTypeChildNodeHTMLTextareaElement :: NonDocumentTypeChildNode HTMLTextareaElement

instance parentNodeHTMLTextareaElement :: ParentNode HTMLTextareaElement

instance slottableHTMLTextareaElement :: Slottable HTMLTextareaElement

class MaybeHTMLTextareaElement a

instance maybeHTMLTextareaElementHTMLTextareaElement :: MaybeHTMLTextareaElement HTMLTextareaElement

toMaybeHTMLTextareaElement :: ∀ a. MaybeHTMLTextareaElement a => a -> Maybe HTMLTextareaElement
toMaybeHTMLTextareaElement = unsafeConvert "HTMLTextareaElement"

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
