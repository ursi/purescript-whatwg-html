module HTML.Document
  ( module DOM.Document.Export
  , module HTML.DocumentOrShadowRoot
  , class IsDocument
  , Document
  , body
  , unsafeBody
  ) where

import MasonPrelude
import Data.Nullable (Nullable)
import Data.Nullable as Nullable
import DOM.Document as DOM.Document
import DOM.Document hiding (class IsDocument) as DOM.Document.Export
import DOM.Node
import DOM.NonElementParentNode
import DOM.ParentNode
import DOM.XPathEvaluatorBase
import HTML.DocumentOrShadowRoot
import HTML.HTMLElement

class (DOM.Document.IsDocument a, IsDocumentOrShadowRoot a) <= IsDocument a

data Document

instance document :: IsDocument Document

instance domDocument :: DOM.Document.IsDocument Document

instance documentOrShadowRoot :: IsDocumentOrShadowRoot Document

instance eventTarget :: IsEventTarget Document

instance node :: IsNode Document

instance nonElementParentNode :: IsNonElementParentNode Document

instance parentNode :: IsParentNode Document

instance xPathEvaluatorBase :: IsXPathEvaluatorBase Document

{-
enum DocumentReadyState { "loading", "interactive", "complete" };
typedef (HTMLScriptElement or SVGScriptElement) HTMLOrSVGScriptElement;

[LegacyOverrideBuiltIns]
partial interface Document {
  // resource metadata management
  [PutForwards=href, LegacyUnforgeable] readonly attribute Location? location;
  attribute USVString domain;
  readonly attribute USVString referrer;
  attribute USVString cookie;
  readonly attribute DOMString lastModified;
  readonly attribute DocumentReadyState readyState;

  // DOM tree accessors
  getter object (DOMString name);
  [CEReactions] attribute DOMString title;
  [CEReactions] attribute DOMString dir;
-}
-- [CEReactions] attribute HTMLElement? body;
foreign import bodyImpl :: ∀ a. a -> Effect (Nullable HTMLElement)

body :: ∀ a. IsDocument a => a -> Effect (Maybe HTMLElement)
body = map Nullable.toMaybe <. bodyImpl

foreign import unsafeBody :: ∀ a. IsDocument a => a -> Effect HTMLElement

{-
  readonly attribute HTMLHeadElement? head;
  [SameObject] readonly attribute HTMLCollection images;
  [SameObject] readonly attribute HTMLCollection embeds;
  [SameObject] readonly attribute HTMLCollection plugins;
  [SameObject] readonly attribute HTMLCollection links;
  [SameObject] readonly attribute HTMLCollection forms;
  [SameObject] readonly attribute HTMLCollection scripts;
  NodeList getElementsByName(DOMString elementName);
  readonly attribute HTMLOrSVGScriptElement? currentScript; // classic scripts in a document tree only

  // dynamic markup insertion
  [CEReactions] Document open(optional DOMString unused1, optional DOMString unused2); // both arguments are ignored
  WindowProxy? open(USVString url, DOMString name, DOMString features);
  [CEReactions] undefined close();
  [CEReactions] undefined write(DOMString... text);
  [CEReactions] undefined writeln(DOMString... text);

  // user interaction
  readonly attribute WindowProxy? defaultView;
  boolean hasFocus();
  [CEReactions] attribute DOMString designMode;
  [CEReactions] boolean execCommand(DOMString commandId, optional boolean showUI = false, optional DOMString value = "");
  boolean queryCommandEnabled(DOMString commandId);
  boolean queryCommandIndeterm(DOMString commandId);
  boolean queryCommandState(DOMString commandId);
  boolean queryCommandSupported(DOMString commandId);
  DOMString queryCommandValue(DOMString commandId);

  // special event handler IDL attributes that only apply to Document objects
  [LegacyLenientThis] attribute EventHandler onreadystatechange;

  // also has obsolete members
};
Document includes GlobalEventHandlers;
Document includes DocumentAndElementEventHandlers;
-}
