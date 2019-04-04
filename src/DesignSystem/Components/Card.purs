module Salesforce.DesignSystem.Components.Card where 


import Prelude
import Prim.Row (class Union)

import Data.Nullable (Nullable)
import Salesforce.DesignSystem.Components.Internal (_cardImpl, _cardFilterImpl, _cardEmptyImpl)
import Effect.Uncurried (EffectFn1)
import React.Basic (JSX, element)

type CardProps
  = ( bodyClassName        :: String 
    , children             :: Array JSX
    , className            :: String
    , empty                :: Nullable JSX 
    , filter               :: JSX
    , footer               :: JSX
    , header               :: JSX
    , heading              :: JSX
    , headerActions        :: JSX
    , icon                 :: JSX
    , id                   :: String
    , style                :: String
    )

type CardFilterProps 
  = ( id                   :: String 
    , onChange             :: EffectFn1 { target :: { value :: String } } Unit
    , placeholder          :: String    
    )

type CardEmptyProps 
  = ( children             :: Array JSX
    , heading              :: String
    )

card :: forall partial trash. Union partial trash CardProps => { | partial } -> JSX
card = element _cardImpl

cardfilter :: forall partial trash. Union partial trash CardFilterProps => { | partial } -> JSX
cardfilter = element _cardFilterImpl

cardempty :: forall partial trash. Union partial trash CardEmptyProps => { | partial } -> JSX
cardempty = element _cardEmptyImpl