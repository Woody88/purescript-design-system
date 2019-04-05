module Salesforce.DesignSystem.Components.PageHeader where 

import DesignSystem.Components (_pageHeaderImpl)
import React.Basic (JSX, element)
import Prim.Row (class Union)

type PageHeaderProps 
  = ( label              :: JSX  
    , title              :: JSX 
    , info               :: JSX 
    , icon               :: JSX
    , iconName           :: String 
    , iconAssistiveText  :: String 
    , iconCategory       :: String
    , iconPosition       :: String 
    , iconSize           :: String 
    , iconVariant        :: String 
    , contentRight       :: JSX 
    , details            :: Array (Record PageDetailBlock)
    , navRight           :: JSX
    , trail              :: Array JSX
    , variant            :: String 
    , className          :: String 
    , children           :: Array JSX
    )

type PageDetailBlock 
  = ( className :: String 
    , label     :: JSX
    , content   :: JSX 
    , truncate  :: Boolean 
    , flavor    :: String 
    )

pageHeader :: forall partial trash. Union partial trash PageHeaderProps => { | partial } -> JSX
pageHeader = element _pageHeaderImpl
