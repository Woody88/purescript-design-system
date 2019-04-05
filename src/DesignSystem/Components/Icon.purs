module Salesforce.DesignSystem.Components.Icon where 

import DesignSystem.Components (_iconImpl)
import React.Basic (JSX, element)
import Prim.Row (class Union)

type IconProps 
  = ( assistiveText     :: Record (label :: String)  
    , category          :: String 
    , colorVariant      :: String 
    , inverse           :: String 
    , name              :: String 
    , path              :: String
    , size              :: String 
    , title             :: String 
    , icon              :: Record IconSvgProp
    )

type IconSvgProp
  = ( xmlns :: String 
    , viewBox :: String
    , path :: Record ( d :: String ) 
    )

icon :: forall partial trash. Union partial trash IconProps => { | partial } -> JSX
icon = element _iconImpl