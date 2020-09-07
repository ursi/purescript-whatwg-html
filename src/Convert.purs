module Convert
  ( class ToDocument
  , toDocument
  , class ToElement
  , toElement
  , class ToHTMLElement
  , toHTMLElement
  , class ToText
  , toText
  ) where

import MasonPrelude
import DOM.Text (Text)
import HTML.HTMLElement (Element, HTMLElement)
import HTML.Document (Document, Node)

foreign import instanceof :: ∀ a. a -> String -> Boolean

unsafeConvert :: ∀ a b. String -> a -> Maybe b
unsafeConvert constructor value =
  if value `instanceof` constructor then
    Just $ unsafeCoerce value
  else
    Nothing

class ToText a where
  toText :: a -> Maybe Text

instance nodeToText :: ToText Node where
  toText = unsafeConvert "Text"

class ToElement a where
  toElement :: a -> Maybe Element

instance nodeToElement :: ToElement Node where
  toElement = unsafeConvert "Element"

class ToDocument a where
  toDocument :: a -> Maybe Document

instance nodeToDocument :: ToDocument Node where
  toDocument = unsafeConvert "Document"

class ToHTMLElement a where
  toHTMLElement :: a -> Maybe HTMLElement

instance nodeToHTMLElement :: ToHTMLElement Node where
  toHTMLElement = unsafeConvert "HTMLElement"

instance elementToHTMLElement :: ToHTMLElement Element where
  toHTMLElement = unsafeConvert "HTMLElement"
