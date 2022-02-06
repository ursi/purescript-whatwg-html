-- for each data type T, an instance of IsT and MaybeT must be defined for T so that all required instances can be enforced by the compiler
-- however, certain type classes do not need to be exported because they serve no other purpose, e.g., MaybeEvent and IsMouseEvent
module WHATWG.HTML.Types
  ( module Web.DOM.DOMTokenList
  , module Web.Event.Event
  , class IsEvent
  , toEvent
  , module Web.Event.CustomEvent
  , class IsCustomEvent
  , class MaybeCustomEvent
  , toMaybeCustomEvent
  , module Web.UIEvent.UIEvent
  , class IsUIEvent
  , class MaybeUIEvent
  , toUIEvent
  , toMaybeUIEvent
  , module Web.UIEvent.KeyboardEvent
  , class MaybeKeyboardEvent
  , toMaybeKeyboardEvent
  , module Web.UIEvent.InputEvent
  , class MaybeInputEvent
  , toMaybeInputEvent
  , module Web.UIEvent.MouseEvent
  , class MaybeMouseEvent
  , toMaybeMouseEvent
  , module Web.Event.EventTarget
  , class IsEventTarget
  , toEventTarget
  , module Web.DOM.Node
  , class IsNode
  , class MaybeNode
  , toNode
  , toMaybeNode
  , module Web.DOM.Document
  , class MaybeDocument
  , toMaybeDocument
  , module Web.DOM.Element
  , class IsElement
  , class MaybeElement
  , toElement
  , toMaybeElement
  , module Web.HTML.HTMLElement
  , class IsHTMLElement
  , class MaybeHTMLElement
  , toHTMLElement
  , toMaybeHTMLElement
  , class MaybeHTMLInputElement
  , module Web.HTML.HTMLInputElement
  , toMaybeHTMLInputElement
  , class MaybeHTMLTextAreaElement
  , module Web.HTML.HTMLTextAreaElement
  , toMaybeHTMLTextAreaElement
  , class IsCharacterData
  , module Web.DOM.Text
  , class IsText
  , class MaybeText
  , toMaybeText
  , module Web.HTML.Window
  , class MaybeWindow
  , toMaybeWindow
  , module Web.Storage.Storage
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
import Web.DOM.Document (Document)
import Web.DOM.Element (Element)
import Web.DOM.DOMTokenList (DOMTokenList)
import Web.DOM.Node (Node)
import Web.DOM.Text (Text)
import Web.Event.Event (Event)
import Web.Event.EventTarget (EventTarget)
import Web.Event.CustomEvent (CustomEvent)
import Web.HTML.HTMLElement (HTMLElement)
import Web.HTML.HTMLInputElement (HTMLInputElement)
import Web.HTML.HTMLTextAreaElement (HTMLTextAreaElement)
import Web.HTML.Window (Window)
import Web.Storage.Storage (Storage)
import Web.UIEvent.InputEvent (InputEvent)
import Web.UIEvent.KeyboardEvent (KeyboardEvent)
import Web.UIEvent.MouseEvent (MouseEvent)
import Web.UIEvent.UIEvent (UIEvent)
import WHATWG.Internal (unsafeConvert)

class IsEvent :: ∀ k. k -> Constraint
class IsEvent a

instance isEventEvent :: IsEvent Event

class MaybeEvent :: ∀ k. k -> Constraint
class (MaybeCustomEvent a, MaybeUIEvent a) <= MaybeEvent a

instance maybeEventEvent :: MaybeEvent Event

instance maybeCustomEventEvent :: MaybeCustomEvent Event

instance maybeUIEventEvent :: MaybeUIEvent Event

instance maybeKeyboardEventEvent :: MaybeKeyboardEvent Event

instance maybeInputEventEvent :: MaybeInputEvent Event

instance maybeMouseEventEvent :: MaybeMouseEvent Event

toEvent :: ∀ a. IsEvent a => a -> Event
toEvent = unsafeCoerce

class IsCustomEvent :: ∀ k. k -> Constraint
class IsEvent a <= IsCustomEvent a

instance isEventCustomEvent :: IsEvent CustomEvent

instance isCustomEventCustomEvent :: IsCustomEvent CustomEvent

class MaybeCustomEvent :: ∀ k. k -> Constraint
class MaybeCustomEvent a

instance maybeCustomEventCustomEvent :: MaybeCustomEvent CustomEvent

toMaybeCustomEvent :: ∀ a. MaybeCustomEvent a => a -> Maybe CustomEvent
toMaybeCustomEvent = unsafeConvert "CustomEvent"

class IsUIEvent :: ∀ k. k -> Constraint
class IsEvent a <= IsUIEvent a

instance isEventUIEvent :: IsEvent UIEvent

instance isUIEventUIEvent :: IsUIEvent UIEvent

class MaybeUIEvent :: ∀ k. k -> Constraint
class (MaybeKeyboardEvent a, MaybeInputEvent a, MaybeMouseEvent a) <= MaybeUIEvent a

instance maybeUIEventUIEvent :: MaybeUIEvent UIEvent

instance maybeKeyboardEventUIEvent :: MaybeKeyboardEvent UIEvent

instance maybeInputEventUIEvent :: MaybeInputEvent UIEvent

instance maybeMouseEventUIEvent :: MaybeMouseEvent UIEvent

toUIEvent :: ∀ a. IsUIEvent a => a -> UIEvent
toUIEvent = unsafeCoerce

toMaybeUIEvent :: ∀ a. MaybeUIEvent a => a -> Maybe UIEvent
toMaybeUIEvent = unsafeConvert "UIEvent"

class IsKeyboardEvent :: ∀ k. k -> Constraint
class IsUIEvent a <= IsKeyboardEvent a

instance isEventKeyboardEvent :: IsEvent KeyboardEvent

instance isUIEventKeyboardEvent :: IsUIEvent KeyboardEvent

instance isKeyboardEventKeyboardEvent :: IsKeyboardEvent KeyboardEvent

class MaybeKeyboardEvent :: ∀ k. k -> Constraint
class MaybeKeyboardEvent a

instance maybeKeyboardEventKeyboardEvent :: MaybeKeyboardEvent KeyboardEvent

toMaybeKeyboardEvent :: ∀ a. MaybeKeyboardEvent a => a -> Maybe KeyboardEvent
toMaybeKeyboardEvent = unsafeConvert "KeyboardEvent"

class IsInputEvent :: ∀ k. k -> Constraint
class IsUIEvent a <= IsInputEvent a

instance isEventInputEvent :: IsEvent InputEvent

instance isUIEventInputEvent :: IsUIEvent InputEvent

instance isInputEventInputEvent :: IsInputEvent InputEvent

class MaybeInputEvent :: ∀ k. k -> Constraint
class MaybeInputEvent a

instance maybeInputEventInputEvent :: MaybeInputEvent InputEvent

toMaybeInputEvent :: ∀ a. MaybeInputEvent a => a -> Maybe InputEvent
toMaybeInputEvent = unsafeConvert "InputEvent"

class IsMouseEvent :: ∀ k. k -> Constraint
class IsUIEvent a <= IsMouseEvent a

instance isEventMouseEvent :: IsEvent MouseEvent

instance isUIEventMouseEvent :: IsUIEvent MouseEvent

instance isMouseEventMouseEvent :: IsMouseEvent MouseEvent

class MaybeMouseEvent :: ∀ k. k -> Constraint
class MaybeMouseEvent a

instance maybeMouseEventMouseEvent :: MaybeMouseEvent MouseEvent

toMaybeMouseEvent :: ∀ a. MaybeMouseEvent a => a -> Maybe MouseEvent
toMaybeMouseEvent = unsafeConvert "MouseEvent"

class IsEventTarget :: ∀ k. k -> Constraint
class IsEventTarget a

instance isEventTargetEventTarget :: IsEventTarget EventTarget

class MaybeEventTarget :: ∀ k. k -> Constraint
class (MaybeNode a, MaybeWindow a) <= MaybeEventTarget a

instance maybeEventTargetEventTarget :: MaybeEventTarget EventTarget

instance maybeDocumentEventTarget :: MaybeDocument EventTarget

instance maybeElementEventTarget :: MaybeElement EventTarget

instance maybeHTMLElementEventTarget :: MaybeHTMLElement EventTarget

instance maybeHTMLInputElementEventTarget :: MaybeHTMLInputElement EventTarget

instance maybeHTMLTextAreaElementEventTarget :: MaybeHTMLTextAreaElement EventTarget

instance maybeNodeEventTarget :: MaybeNode EventTarget

instance maybeTextEventTarget :: MaybeText EventTarget

instance maybeWindowEventTarget :: MaybeWindow EventTarget

toEventTarget :: ∀ a. IsEventTarget a => a -> EventTarget
toEventTarget = unsafeCoerce

class IsNode :: ∀ k. k -> Constraint
class IsEventTarget a <= IsNode a

instance isEventTargetNode :: IsEventTarget Node

instance isNodeNode :: IsNode Node

class MaybeNode :: ∀ k. k -> Constraint
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

instance maybeHTMLTextAreaElementNode :: MaybeHTMLTextAreaElement Node

instance maybeTextNode :: MaybeText Node

toNode :: ∀ a. IsNode a => a -> Node
toNode = unsafeCoerce

toMaybeNode :: ∀ a. MaybeNode a => a -> Maybe Node
toMaybeNode = unsafeConvert "Node"

class IsDocument :: ∀ k. k -> Constraint
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

class MaybeDocument :: ∀ k. k -> Constraint
class MaybeDocument a

instance maybeDocumentDocument :: MaybeDocument Document

toMaybeDocument :: ∀ a. MaybeDocument a => a -> Maybe Document
toMaybeDocument = unsafeConvert "HTMLDocument"

class IsElement :: ∀ k. k -> Constraint
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

class MaybeElement :: ∀ k. k -> Constraint
class MaybeHTMLElement a <= MaybeElement a

instance maybeElementElement :: MaybeElement Element

instance maybeHTMLElementElement :: MaybeHTMLElement Element

instance maybeHTMLInputElementElement :: MaybeHTMLInputElement Element

instance maybeHTMLTextAreaElementElement :: MaybeHTMLTextAreaElement Element

toElement :: ∀ a. IsElement a => a -> Element
toElement = unsafeCoerce

toMaybeElement :: ∀ a. MaybeElement a => a -> Maybe Element
toMaybeElement = unsafeConvert "Element"

class IsHTMLElement :: ∀ k. k -> Constraint
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

class MaybeHTMLElement :: ∀ k. k -> Constraint
class (MaybeHTMLInputElement a, MaybeHTMLTextAreaElement a) <= MaybeHTMLElement a

instance maybeHTMLElementHTMLElement :: MaybeHTMLElement HTMLElement

instance maybeHTMLInputElementHTMLElement :: MaybeHTMLInputElement HTMLElement

instance maybeHTMLTextAreaElementHTMLElement :: MaybeHTMLTextAreaElement HTMLElement

toHTMLElement :: ∀ a. IsHTMLElement a => a -> HTMLElement
toHTMLElement = unsafeCoerce

toMaybeHTMLElement :: ∀ a. MaybeHTMLElement a => a -> Maybe HTMLElement
toMaybeHTMLElement = unsafeConvert "HTMLElement"

class IsHTMLInputElement :: ∀ k. k -> Constraint
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

class MaybeHTMLInputElement :: ∀ k. k -> Constraint
class MaybeHTMLInputElement a

instance maybeHTMLInputElementHTMLInputElement :: MaybeHTMLInputElement HTMLInputElement

toMaybeHTMLInputElement :: ∀ a. MaybeHTMLInputElement a => a -> Maybe HTMLInputElement
toMaybeHTMLInputElement = unsafeConvert "HTMLInputElement"

class IsHTMLTextAreaElement :: ∀ k. k -> Constraint
class IsHTMLElement a <= IsHTMLTextAreaElement a

instance isEventTargetHTMLTextAreaElement :: IsEventTarget HTMLTextAreaElement

instance isNodeHTMLTextAreaElement :: IsNode HTMLTextAreaElement

instance isElementHTMLTextAreaElement :: IsElement HTMLTextAreaElement

instance hTMLElementHTMLTextAreaElement :: IsHTMLElement HTMLTextAreaElement

instance isHTMLTextAreaElementHTMLTextAreaElement :: IsHTMLTextAreaElement HTMLTextAreaElement

instance childNodeHTMLTextAreaElement :: ChildNode HTMLTextAreaElement

instance elementContentEditableHTMLTextAreaElement :: ElementContentEditable HTMLTextAreaElement

instance globalEventHandlersHTMLTextAreaElement :: GlobalEventHandlers HTMLTextAreaElement

instance hTMLOrSVGElementHTMLTextAreaElement :: HTMLOrSVGElement HTMLTextAreaElement

instance nonDocumentTypeChildNodeHTMLTextAreaElement :: NonDocumentTypeChildNode HTMLTextAreaElement

instance parentNodeHTMLTextAreaElement :: ParentNode HTMLTextAreaElement

instance slottableHTMLTextAreaElement :: Slottable HTMLTextAreaElement

class MaybeHTMLTextAreaElement :: ∀ k. k -> Constraint
class MaybeHTMLTextAreaElement a

instance maybeHTMLTextAreaElementHTMLTextAreaElement :: MaybeHTMLTextAreaElement HTMLTextAreaElement

toMaybeHTMLTextAreaElement :: ∀ a. MaybeHTMLTextAreaElement a => a -> Maybe HTMLTextAreaElement
toMaybeHTMLTextAreaElement = unsafeConvert "HTMLTextAreaElement"

class IsCharacterData :: ∀ k. k -> Constraint
class (IsNode a, ChildNode a, NonDocumentTypeChildNode a) <= IsCharacterData a

class IsText :: ∀ k. k -> Constraint
class (IsCharacterData a, Slottable a) <= IsText a

instance isEventTargetText :: IsEventTarget Text

instance isNodeText :: IsNode Text

instance isCharacterDataText :: IsCharacterData Text

instance childNodeText :: ChildNode Text

instance nonDocumentTypeChildNodeText :: NonDocumentTypeChildNode Text

instance slottableText :: Slottable Text

class MaybeText :: ∀ k. k -> Constraint
class MaybeText a

instance maybeTextText :: MaybeText Text

toMaybeText :: ∀ a. MaybeText a => a -> Maybe Text
toMaybeText = unsafeConvert "Text"

class IsWindow :: ∀ k. k -> Constraint
class (IsEventTarget a, GlobalEventHandlers a) <= IsWindow a

instance isEventTargetWindow :: IsEventTarget Window

instance isWindowWindow :: IsWindow Window

instance globalEventHandlersWindow :: GlobalEventHandlers Window

class MaybeWindow :: ∀ k. k -> Constraint
class MaybeWindow a

instance maybeWindowWindow :: MaybeWindow Window

toMaybeWindow :: ∀ a. MaybeWindow a => a -> Maybe Window
toMaybeWindow = unsafeConvert "Window"

-- Mixins
class ChildNode :: ∀ k. k -> Constraint
class ChildNode a

class NonDocumentTypeChildNode :: ∀ k. k -> Constraint
class NonDocumentTypeChildNode a

class NonElementParentNode :: ∀ k. k -> Constraint
class NonElementParentNode a

class ParentNode :: ∀ k. k -> Constraint
class ParentNode a

class Slottable :: ∀ k. k -> Constraint
class Slottable a

class XPathEvaluatorBase :: ∀ k. k -> Constraint
class XPathEvaluatorBase a

class DocumentOrShadowRoot :: ∀ k. k -> Constraint
class DocumentOrShadowRoot a

class ElementContentEditable :: ∀ k. k -> Constraint
class ElementContentEditable a

class GlobalEventHandlers :: ∀ k. k -> Constraint
class GlobalEventHandlers a

class HTMLOrSVGElement :: ∀ k. k -> Constraint
class HTMLOrSVGElement a
