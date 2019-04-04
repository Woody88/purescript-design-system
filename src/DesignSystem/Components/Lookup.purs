module Salesforce.DesignSystem.Components.Lookup where 

import Salesforce.DesignSystem.Components.Internal (_lookupImpl)
import React.Basic (JSX, element)
import React.Basic.Events (EventHandler)
import Prim.Row

type LookupProps items
    = ( assistiveText              :: String
      , className                  :: String
      , constrainToScrollParent    :: Boolean 
      , describedById              :: String 
      , menuPosition               :: String
      , disabled                   :: Boolean 
      , emptyMessage               :: JSX
      , filterWith                 :: EventHandler
      , flippable                  :: Boolean 
      , footerRenderer             :: EventHandler 
      , headerRenderer             :: EventHandler
      , iconCategory               :: String 
      , iconInverse                :: Boolean 
      , iconName                   :: String 
      , iconPosition               :: String 
      , isInline                   :: Boolean 
      , isOpen                     :: Boolean 
      , label                      :: String 
      , listItemLabelRenderer      :: EventHandler
      , onBlur                     :: EventHandler
      , onChange                   :: EventHandler
      , onFocus                    :: EventHandler
      , onRequestClose             :: EventHandler
      , onRequestOpen              :: EventHandler
      , onScroll                   :: EventHandler
      , onSelect                   :: EventHandler
      , onUnselect                 :: EventHandler
      , options                    :: Array items
      , placeholder                :: String 
      , required                   :: Boolean  
      , searchTerm                 :: String 
      , sectionDividerRenderer     :: EventHandler 
      , selectedItem               :: Int 
      )

lookup :: forall partial trash items. Union partial trash (LookupProps items) => { options :: Array items | partial } -> JSX
lookup = element _lookupImpl
