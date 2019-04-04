module Salesforce.DesignSystem.Components.Tab where 

import Prelude (Unit)
import Prim.Row (class Union)

import Salesforce.DesignSystem.Components.Internal (_tabsImpl, _tabsPanelImpl)
import Effect.Uncurried (EffectFn1)
import React.Basic (JSX, element)

type TabsProps 
  = ( id                   :: String 
    , className            :: String
    , children             :: Array JSX
    , defaultSelectedIndex :: Int  
    , onSelect             :: EffectFn1 Int Unit
    , variant              :: String 
    , selectedIndex        :: Int
    )
    
type TabsPanelProps 
  = ( label    :: JSX 
    , children :: Array JSX
    )

tab :: forall partial trash. Union partial trash TabsProps => { | partial } -> JSX
tab = element _tabsImpl

tabPanel :: forall partial trash. Union partial trash TabsPanelProps => { | partial } -> JSX
tabPanel = element _tabsPanelImpl