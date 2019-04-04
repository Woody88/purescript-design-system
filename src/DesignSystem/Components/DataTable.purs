module Salesforce.DesignSystem.Components.DataTable where 

import Prelude (Unit)
import Prim.Row (class Union)
import Salesforce.DesignSystem.Components.Internal (_dataTableImpl, _cellImpl, _columnImpl, _highlightCellImpl)
import Effect.Uncurried (EffectFn2)
import React.Basic (JSX, element)
import React.Basic.Events (EventHandler)


type DataTableProps items
    = ( assistiveText                 :: String 
      , children                      :: Array JSX
      , className                     :: String 
      , selectRows                    :: String 
      , columnBordered                :: Boolean   
      , fixedHeader                   :: Boolean
      , fixedLayout                   :: Boolean
      , noRowHover                    :: Boolean 
      , stacked                       :: Boolean 
      , stackedHorizontal             :: Boolean 
      , striped                       :: Boolean 
      , unborderedRow                 :: Boolean 
      , unbufferedCell                :: Boolean
      , id                            :: String 
      , items                         :: Array items
      , onFixedHeaderResize           :: EventHandler
      , onRowChange                   :: EffectFn2 { target :: { id :: String }} { selection :: (Array items) } Unit 
      , onSort                        :: EventHandler
      , onToggleFixedHeaderListeners  :: EventHandler
      , selection                     :: Array items
      )

type CellProps item
    = ( children      :: JSX 
      , className     :: String 
      , fixedLayout	  :: Boolean 
      , primaryColumn :: Boolean 
      , item          :: item
      , property      :: String 
      , title         :: String 
      , width         :: String
      )

type ColumnProps 
    = ( children       :: JSX
      , isSorted       :: Boolean 
      , primaryColumn  :: Boolean
      , sortable       :: Boolean 
      , truncate       :: Boolean
      , label          :: JSX 
      , property       :: String 
      , sortDirection  :: String 
      , title          :: String 
      , width          :: String 
      )

type HighlightCellProps 
    = ( children :: JSX 
      , search   :: String 
      )

{-- to be implemented
type RowActionsProps a
    = ( assistiveText :: String 
      , className     :: String 
      , id            :: String 
      , item          :: a 
      , noHint        :: Boolean 
      , onAction      :: EventHandler
      , options       :: JSX 
      , 
      )
--}

dataTable :: forall partial trash items. Union partial trash (DataTableProps items) => { | partial } -> JSX
dataTable = element _dataTableImpl

cell :: forall partial trash item. Union partial trash (CellProps item) => { | partial } -> JSX
cell = element _cellImpl

column :: forall partial trash. Union partial trash ColumnProps => { | partial } -> JSX
column = element _columnImpl

highlightCell :: forall partial trash. Union partial trash HighlightCellProps => { | partial } -> JSX
highlightCell = element _highlightCellImpl