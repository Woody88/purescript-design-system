module Salesforce.DesignSystem.Components.IconSetting where 

import DesignSystem.Components (_iconSettingsImpl)
import React.Basic (JSX, element)
import React.Basic.Events (EventHandler)
import Prim.Row (class Union)

type IconSettingsProp
  = ( iconPath          :: String 
    , onRequestIconPath :: EventHandler
    , actionSprite      :: String 
    , customSprite      :: String 
    , standardSprite    :: String 
    , utilitySprite     :: String 
    )

iconSettings :: forall partial trash. Union partial trash IconSettingsProp => { | partial } -> JSX
iconSettings = element _iconSettingsImpl