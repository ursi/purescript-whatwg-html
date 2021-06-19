module WHATWG.HTML.Mixin.DocumentOrShadowRoot (activeElement) where

import MasonPrelude

import Data.Nullable (Nullable)
import Data.Nullable as Nullable
import WHATWG.HTML.Types (class DocumentOrShadowRoot, HTMLElement)
import WHATWG.Internal as I

-- readonly attribute Element? activeElement;
activeElementNullable :: ∀ d.
  DocumentOrShadowRoot d
  => d
  -> Effect (Nullable HTMLElement)
activeElementNullable = I.unsafeGet "activeElement"

activeElement :: ∀ d. DocumentOrShadowRoot d => d -> Effect (Maybe HTMLElement)
activeElement = map Nullable.toMaybe <. activeElementNullable
