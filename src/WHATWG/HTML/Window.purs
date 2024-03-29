module WHATWG.HTML.Window
  ( module Exports
  , alert
  , alert'
  , document
  , document'
  , window
  , window'
  ) where

import MasonPrelude
import WHATWG.HTML.Types (Window, Document)
import WHATWG.Internal as I
import WHATWG.HTML.Types
  ( class MaybeWindow
  , Window
  , toMaybeWindow
  )
  as Exports

foreign import window :: Effect Window
foreign import windowPrime :: Window

window' :: Window
window' = windowPrime

{-
interface Window : EventTarget {
  // the current browsing context
  [LegacyUnforgeable] readonly attribute WindowProxy window;
  [Replaceable] readonly attribute WindowProxy self;
-}

--[LegacyUnforgeable] readonly attribute Document document;
document :: Window -> Effect Document
document = I.unsafeGet "document"

document' :: Effect Document
document' = document window'

{-
  attribute DOMString name;
  [PutForwards=href, LegacyUnforgeable] readonly attribute Location location;
  readonly attribute History history;
  readonly attribute CustomElementRegistry customElements;
  [Replaceable] readonly attribute BarProp locationbar;
  [Replaceable] readonly attribute BarProp menubar;
  [Replaceable] readonly attribute BarProp personalbar;
  [Replaceable] readonly attribute BarProp scrollbars;
  [Replaceable] readonly attribute BarProp statusbar;
  [Replaceable] readonly attribute BarProp toolbar;
  attribute DOMString status;
  undefined close();
  readonly attribute boolean closed;
  undefined stop();
  undefined focus();
  undefined blur();

  // other browsing contexts
  [Replaceable] readonly attribute WindowProxy frames;
  [Replaceable] readonly attribute unsigned long length;
  [LegacyUnforgeable] readonly attribute WindowProxy? top;
  attribute any opener;
  [Replaceable] readonly attribute WindowProxy? parent;
  readonly attribute Element? frameElement;
  WindowProxy? open(optional USVString url = "", optional DOMString target = "_blank", optional [LegacyNullToEmptyString] DOMString features = "");
  getter object (DOMString name);
  // Since this is the global object, the IDL named getter adds a NamedPropertiesObject exotic
  // object on the prototype chain. Indeed, this does not make the global object an exotic object.
  // Indexed access is taken care of by the WindowProxy exotic object.

  // the user agent
  readonly attribute Navigator navigator;
  [SecureContext] readonly attribute ApplicationCache applicationCache;
  readonly attribute boolean originIsolated;
-}

-- undefined alert();
-- undefined alert(DOMString message);
foreign import alert :: String -> Window -> Effect Unit

alert' :: String -> Effect Unit
alert' = alert ~$ window'

{-
  boolean confirm(optional DOMString message = "");
  DOMString? prompt(optional DOMString message = "", optional DOMString default = "");
  undefined print();

  undefined postMessage(any message, USVString targetOrigin, optional sequence<object> transfer = []);
  undefined postMessage(any message, optional WindowPostMessageOptions options = {});

  // also has obsolete members
};
Window includes GlobalEventHandlers;
Window includes WindowEventHandlers;

dictionary WindowPostMessageOptions : PostMessageOptions {
  USVString targetOrigin = "/";
};
-}
