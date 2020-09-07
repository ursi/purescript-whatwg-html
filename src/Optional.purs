-- modified from https://github.com/joneshf/purescript-option/blob/v2.1.0/src/Option.purs
module Optional
  ( class Optional
  , class OptionalHelper
  ) where

import Data.Symbol (class IsSymbol)
import Prim.Row as R
import Prim.RowList as RL

class Optional (option :: # Type) (record :: # Type)

instance fromRecordAny ::
  ( OptionalHelper list option record
  , RL.RowToList record list
  ) =>
  Optional option record

class OptionalHelper (list :: RL.RowList) (option :: # Type) (record :: # Type) | list -> option record

instance fromRecordOptionNil :: OptionalHelper RL.Nil option ()
else instance fromRecordOptionCons ::
  ( IsSymbol label
  , OptionalHelper list record' option'
  , R.Cons label value option' option
  , R.Cons label value record' record
  , R.Lacks label option'
  , R.Lacks label record'
  ) =>
  OptionalHelper (RL.Cons label value list) option record
