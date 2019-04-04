module Salesforce.DesignSystem.Components.Dropdown where 


import Prelude (Unit)
import Prim.Row (class Union)

import Salesforce.DesignSystem.Components.Internal (_dropdownImpl, _buttonTriggerImpl)
import Effect.Uncurried (EffectFn1)
import React.Basic (JSX, element)
import React.Basic.Events (EventHandler)

type DropdownProps item
  = ( align                :: String 
    , assistiveText        :: String
    , buttonClassName      :: JSX
    , buttonInverse        :: Boolean  
    , buttonVariant        :: String
    , checkmark            :: Boolean 
    , children             :: Array JSX
    , className            :: String
    , containerClassName   :: Boolean
    , disabled             :: Boolean
    , hasStaticAlignment   :: Boolean
    , hint                 :: Boolean
    , hoverCloseDelay      :: Int
    , iconCategory         :: String
    , iconName             :: String
    , iconPosition         :: String
    , iconVariant          :: String
    , iconSize             :: String
    , id                   :: String
    , isOpen               :: Boolean
    , label                :: String
    , listItemRenderer     :: String
    , length               :: Int
    , menuPosition         :: String
    , menuStyle            :: String
    , nubbinPosition       :: String
    , onBlur               :: EventHandler
    , onClick              :: EventHandler
    , onFocus              :: EventHandler
    , openOn               :: EventHandler
    , onKeyDown            :: EventHandler
    , onMouseDown          :: EventHandler
    , onMouseEnter         :: EventHandler
    , onMouseLeave         :: EventHandler
    , onSelect             :: EffectFn1 item Unit
    , onOpen               :: EventHandler
    , onClose              :: EventHandler
    , options              :: Array item
    , style                :: String
    , tabIndex             :: String
    , overlay              :: String
    , value                :: String
    , tooltip              :: String
    , triggerClassName     :: String
    , multiple             :: Boolean
    )

type ButtonTriggerProps 
  = ( children             :: Array JSX
    , className            :: String
    , id                   :: String
    , isOpen               :: Boolean
    , menu                 :: String
    , onBlur               :: EventHandler
    , onClick              :: EventHandler
    , onFocus              :: EventHandler
    , onKeyDown            :: EventHandler
    , onMouseDown          :: EventHandler
    , onMouseEnter         :: EventHandler
    , onMouseLeave         :: EventHandler
    , openOn               :: String
    , triggerRef           :: String
    , triggerClassName     :: String
    )

dropdown :: forall partial trash item. Union partial trash (DropdownProps item) => { | partial } -> JSX
dropdown = element _dropdownImpl

buttonTrigger :: forall partial trash. Union partial trash ButtonTriggerProps => { | partial } -> JSX
buttonTrigger = element _buttonTriggerImpl
