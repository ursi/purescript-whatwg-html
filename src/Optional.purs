-- modified from https://github.com/joneshf/purescript-option/blob/v2.1.0/src/Option.purs
module Optional
  ( class Optional
  , class OptionalHelper
  ) where

import Prim.Row as R
import Prim.RowList (kind RowList, Nil)
import Prim.RowList as RL

class Optional (options :: # Type) (row :: # Type)

instance optional ::
  ( RL.RowToList row list
  , OptionalHelper list options row
  ) =>
  Optional options row

class OptionalHelper (list :: RowList) (options :: # Type) (row :: # Type) | list -> options row

instance optionalHelperNil :: OptionalHelper Nil options ()

instance optionalHelperCons ::
  ( R.Cons label type_ o options
  , R.Cons label type_ r row
  , R.Lacks label o
  , R.Lacks label r
  , OptionalHelper list o r
  ) =>
  OptionalHelper (RL.Cons label type_ list) options row
