module Salesforce.DesignSystem.Components.Button where 


import DesignSystem.Components (_buttonImpl)
import Prim.Row (class Union)
import React.Basic (JSX, element)
import React.Basic.Events (EventHandler)

data ButtonType = Reset | Submit | Button 

type ButtonProps 
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
      , iconCategory  :: String
      , iconClassName :: String 
      , iconName      :: String 
      , iconPath      :: String 
      , iconPosition  :: String 
      , iconSize      :: String 
      , iconVariant   :: String 
      , id            :: String 
      , label         :: String 
      , tabIndex      :: String 
      , "type"        :: ButtonType 
      , title         :: String 
      )

button :: forall partial trash. Union partial trash ButtonProps => { | partial } -> JSX
button = element _buttonImpl
