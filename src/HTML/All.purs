module HTML.All (module Exports) where

-- DOM
import DOM.CharacterData as Exports
import DOM.CustomEvent as Exports
import DOM.Document as Exports
import DOM.Element as Exports
import DOM.Event as Exports
import DOM.EventTarget as Exports
import DOM.Node as Exports
import DOM.Text hiding (new) as Exports
import DOM.Mixin.ChildNode as Exports
import DOM.Mixin.NonDocumentTypeChildNode as Exports
import DOM.Mixin.NonElementParentNode as Exports
import DOM.Mixin.ParentNode as Exports
import DOM.Mixin.Slottable as Exports
import DOM.Mixin.XPathEvaluatorBase as Exports
-- HTML
import HTML.Document as Exports
import HTML.HTMLElement as Exports
import HTML.Window as Exports
import HTML.Mixin.DocumentOrShadowRoot as Exports
import HTML.Mixin.ElementContentEditable as Exports
import HTML.Mixin.HTMLOrSVGElement as Exports
