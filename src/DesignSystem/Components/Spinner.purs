module Salesforce.DesignSystem.Components.Spinner where 

import Prelude

import DesignSystem.Components (_spinnerImpl)
import Prim.Row (class Union)
import React.Basic (JSX, element)

type SpinnerProps 
  = ( assistiveText       :: Record ( label :: String )
    , containerClassName  :: String 
    , id                  :: String 
    , isInput             :: Boolean
    , size                :: String 
    , variant             :: SpinnerVariant
    ) 

data SpinnerVariant = Base | Brand | Inverse 

instance showSpinner :: Show SpinnerVariant where 
    show Base    = "base"
    show Brand   = "brand"
    show Inverse = "inverse"

spinner :: forall partial trash. Union partial trash SpinnerProps => { | partial } -> JSX
spinner = element _spinnerImpl
