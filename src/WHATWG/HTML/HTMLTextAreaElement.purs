module WHATWG.HTML.HTMLTextAreaElement
  ( module WHATWG.HTML.Types
  , value
  , setValue
  , selectionStart
  , setSelectionStart
  , selectionEnd
  , setSelectionEnd
  )
  where

import MasonPrelude

import WHATWG.HTML.Types
  ( class MaybeHTMLTextAreaElement
  , HTMLTextAreaElement
  , toMaybeHTMLTextAreaElement
  )
import WHATWG.Internal as I

{-
interface HTMLTextAreaElement : HTMLElement {
  [HTMLConstructor] constructor();

  [CEReactions] attribute DOMString autocomplete;
  [CEReactions] attribute unsigned long cols;
  [CEReactions] attribute DOMString dirName;
  [CEReactions] attribute boolean disabled;
  readonly attribute HTMLFormElement? form;
  [CEReactions] attribute long maxLength;
  [CEReactions] attribute long minLength;
  [CEReactions] attribute DOMString name;
  [CEReactions] attribute DOMString placeholder;
  [CEReactions] attribute boolean readOnly;
  [CEReactions] attribute boolean required;
  [CEReactions] attribute unsigned long rows;
  [CEReactions] attribute DOMString wrap;

  readonly attribute DOMString type;
  [CEReactions] attribute DOMString defaultValue;
-}

-- attribute [LegacyNullToEmptyString] DOMString value;
value :: HTMLTextAreaElement -> Effect String
value = I.unsafeGet "value"

setValue :: String -> HTMLTextAreaElement -> Effect Unit
setValue = I.unsafeSet "value"

{-
  readonly attribute unsigned long textLength;

  readonly attribute boolean willValidate;
  readonly attribute ValidityState validity;
  readonly attribute DOMString validationMessage;
  boolean checkValidity();
  boolean reportValidity();
  undefined setCustomValidity(DOMString error);

  readonly attribute NodeList labels;

  undefined select();
-}

-- attribute unsigned long selectionStart;
selectionStart :: HTMLTextAreaElement -> Effect Int
selectionStart = I.unsafeGet "selectionStart"

setSelectionStart :: Int -> HTMLTextAreaElement -> Effect Unit
setSelectionStart = I.unsafeSet "selectionStart"

-- attribute unsigned long selectionEnd;
selectionEnd :: HTMLTextAreaElement -> Effect Int
selectionEnd = I.unsafeGet "selectionEnd"

setSelectionEnd :: Int -> HTMLTextAreaElement -> Effect Unit
setSelectionEnd = I.unsafeSet "selectionEnd"

{-
  attribute DOMString selectionDirection;
  undefined setRangeText(DOMString replacement);
  undefined setRangeText(DOMString replacement, unsigned long start, unsigned long end, optional SelectionMode selectionMode = "preserve");
  undefined setSelectionRange(unsigned long start, unsigned long end, optional DOMString direction);
};
-}
