module Salesforce.DesignSystem.Components.Alert where 

import DesignSystem.Components (_alertImpl)
import Prim.Row (class Union)
import React.Basic (JSX, element)
import React.Basic.DOM (CSS)
import React.Basic.Events (EventHandler)

type AlertProp
    = ( onBlur        :: EventHandler
      , onClick       :: EventHandler
      , onFocus       :: EventHandler
      , onKeyDown     :: EventHandler
      , onKeyPress    :: EventHandler
      , onKeyUp       :: EventHandler
      , onMouseDown   :: EventHandler
      , onMouseEnter  :: EventHandler
      , onMouseLeave  :: EventHandler
      , onMouseUp     :: EventHandler
      , buttonRef     :: EventHandler 
      , responsive    :: Boolean 
      , inverse       :: Boolean 
      , hint          :: Boolean 
      , disabled      :: Boolean 
      , iconClassName :: String 
      , iconName      :: String 
      , iconPath      :: String 
      , iconPosition  :: String 
      , iconSize      :: String 
      , iconVariant   :: String 
      , id            :: String 
      , label         :: String 
      , tabIndex      :: String 
      , title         :: String 
      , variant       :: String 
      , className     :: String 
      , children      :: Array JSX
      , style         :: CSS
      )

alert :: forall partial trash. Union partial trash AlertProp => { | partial } -> JSX
alert = element _alertImpl
