
module Salesforce.DesignSystem.Components.Toast where 

import Prelude

import DesignSystem.Components (_toastContainerImpl, _toastImpl)
import Prim.Row (class Union)
import React.Basic (JSX, element)
import React.Basic.DOM (CSS)
import React.Basic.Events (EventHandler)

type ToastProps 
  = ( assistiveText      :: Record (closeButton :: JSX) 
    , duration           :: Number 
    , labels             :: Record ToastLabels
    , onClickHeadingLink :: EventHandler
    , onRequestClose     :: EventHandler
    , icon               :: JSX 
    , style              :: CSS
    , variant            :: ToastVariant 
    , className          :: String 
    , children           :: Array JSX
    )

type ToastContainerProp 
  = ( className :: String
    , children  :: JSX
    )

type ToastLabels 
  = ( details     :: JSX
    , heading     :: JSX 
    , headingLink :: JSX
    )

data ToastVariant = Error | Info | Success | Warning 

instance showToastVariant :: Show ToastVariant where 
  show Error   = "error"
  show Info    = "info"
  show Success = "success"
  show Warning = "warning"   

toast :: forall partial trash . Union partial trash ToastProps => { | partial } -> JSX
toast = element _toastImpl

toastContainer :: forall partial trash. Union partial trash ToastContainerProp => { | partial } -> JSX
toastContainer = element _toastContainerImpl