module WHATWG.HTML.HTMLInputElement
  ( module WHATWG.HTML.Types
  , value
  , setValue
  ) where

import MasonPrelude
import WHATWG.HTML.Types
  ( class MaybeHTMLInputElement
  , HTMLInputElement
  , toMaybeHTMLInputElement
  )
import WHATWG.Internal as I

{-
interface HTMLInputElement : HTMLElement {
  [HTMLConstructor] constructor();

  [CEReactions] attribute DOMString accept;
  [CEReactions] attribute DOMString alt;
  [CEReactions] attribute DOMString autocomplete;
  [CEReactions] attribute boolean defaultChecked;
  attribute boolean checked;
  [CEReactions] attribute DOMString dirName;
  [CEReactions] attribute boolean disabled;
  readonly attribute HTMLFormElement? form;
  attribute FileList? files;
  [CEReactions] attribute USVString formAction;
  [CEReactions] attribute DOMString formEnctype;
  [CEReactions] attribute DOMString formMethod;
  [CEReactions] attribute boolean formNoValidate;
  [CEReactions] attribute DOMString formTarget;
  [CEReactions] attribute unsigned long height;
  attribute boolean indeterminate;
  readonly attribute HTMLElement? list;
  [CEReactions] attribute DOMString max;
  [CEReactions] attribute long maxLength;
  [CEReactions] attribute DOMString min;
  [CEReactions] attribute long minLength;
  [CEReactions] attribute boolean multiple;
  [CEReactions] attribute DOMString name;
  [CEReactions] attribute DOMString pattern;
  [CEReactions] attribute DOMString placeholder;
  [CEReactions] attribute boolean readOnly;
  [CEReactions] attribute boolean required;
  [CEReactions] attribute unsigned long size;
  [CEReactions] attribute USVString src;
  [CEReactions] attribute DOMString step;
  [CEReactions] attribute DOMString type;
  [CEReactions] attribute DOMString defaultValue;
-}
-- [CEReactions] attribute [LegacyNullToEmptyString] DOMString value;
value :: HTMLInputElement -> Effect String
value = I.unsafeGet "value"

setValue :: String -> HTMLInputElement -> Effect Unit
setValue = I.unsafeSet "value"

{-
  attribute object? valueAsDate;
  attribute unrestricted double valueAsNumber;
  [CEReactions] attribute unsigned long width;

  undefined stepUp(optional long n = 1);
  undefined stepDown(optional long n = 1);

  readonly attribute boolean willValidate;
  readonly attribute ValidityState validity;
  readonly attribute DOMString validationMessage;
  boolean checkValidity();
  boolean reportValidity();
  undefined setCustomValidity(DOMString error);

  readonly attribute NodeList? labels;

  undefined select();
  attribute unsigned long? selectionStart;
  attribute unsigned long? selectionEnd;
  attribute DOMString? selectionDirection;
  undefined setRangeText(DOMString replacement);
  undefined setRangeText(DOMString replacement, unsigned long start, unsigned long end, optional SelectionMode selectionMode = "preserve");
  undefined setSelectionRange(unsigned long start, unsigned long end, optional DOMString direction);
};
-}
