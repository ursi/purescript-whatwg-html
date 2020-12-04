module WHATWG.HTML.Document
  ( module Exports
  , body
  , createHTMLInputElement
  , head
  , unsafeBody
  , unsafeHead
  ) where

import MasonPrelude
import Data.Nullable (Nullable)
import Data.Nullable as Nullable
import FFIOptions (class FFIOptions)
import WHATWG.DOM.Document (ElementCreationOptions, createElement)
import WHATWG.HTML.Types (Document, HTMLElement, HTMLInputElement)
import WHATWG.Internal as I
import WHATWG.HTML.Types
  ( class MaybeDocument
  , Document
  , toMaybeDocument
  )
  as Exports

createHTMLInputElement ::
  ∀ r.
  FFIOptions () ElementCreationOptions r =>
  Record r ->
  Document ->
  Effect HTMLInputElement
createHTMLInputElement = map unsafeCoerce <.. createElement "input"

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
bodyNullable :: Document -> Effect (Nullable HTMLElement)
bodyNullable = I.unsafeGet "body"

body :: Document -> Effect (Maybe HTMLElement)
body = map Nullable.toMaybe <. bodyNullable

unsafeBody :: Document -> Effect HTMLElement
unsafeBody = map unsafeCoerce <. bodyNullable

-- readonly attribute HTMLHeadElement? head;
headNullable :: Document -> Effect (Nullable HTMLElement)
headNullable = I.unsafeGet "head"

head :: Document -> Effect (Maybe HTMLElement)
head = map Nullable.toMaybe <. headNullable

unsafeHead :: Document -> Effect HTMLElement
unsafeHead = map unsafeCoerce <. headNullable

{-
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
