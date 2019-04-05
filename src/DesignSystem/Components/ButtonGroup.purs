module Salesforce.DesignSystem.Components.ButtonGroup where 

import DesignSystem.Components (_buttonGroupImpl)
import React.Basic (JSX, element)
import Prim.Row (class Union)

type ButtonGroupProps 
  = ( variant   :: String 
    , className :: String 
    , children  :: Array JSX
    , labels    :: { labels :: String, error :: String }
    )

buttonGroup :: forall partial trash. Union partial trash ButtonGroupProps => { | partial } -> JSX
buttonGroup = element _buttonGroupImpl