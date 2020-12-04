module WHATWG.HTML.HTMLTextareaElement
  ( module WHATWG.HTML.Types
  , value
  , setValue
  ) where

import MasonPrelude
import WHATWG.HTML.Types
  ( class MaybeHTMLTextareaElement
  , HTMLTextareaElement
  , toMaybeHTMLTextareaElement
  )

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
foreign import value :: HTMLTextareaElement -> Effect String

foreign import setValue :: String -> HTMLTextareaElement -> Effect Unit

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
  attribute unsigned long selectionStart;
  attribute unsigned long selectionEnd;
  attribute DOMString selectionDirection;
  undefined setRangeText(DOMString replacement);
  undefined setRangeText(DOMString replacement, unsigned long start, unsigned long end, optional SelectionMode selectionMode = "preserve");
  undefined setSelectionRange(unsigned long start, unsigned long end, optional DOMString direction);
};
-}
