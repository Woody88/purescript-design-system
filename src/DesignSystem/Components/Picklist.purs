module Salesforce.DesignSystem.Components.Picklist where 

import Salesforce.DesignSystem.Components.Internal (_picklistImpl)
import React.Basic (JSX, element)
import React.Basic.Events (EventHandler)
import Prim.Row

type Picklist items 
    = ( buttonRef          :: EventHandler
      , className          :: String 
      , checkmark          :: Boolean
      , disabled           :: Boolean  
      , errorText          :: String 
      , id                 :: String 
      , isInline           :: String
      , label              :: String 
      , labels             :: Record (multipleOptionsSelected :: String)
      , listItemRenderer   :: EventHandler 
      , onClick            :: EventHandler
      , onSelect           :: EventHandler
      , onPillRemove       :: EventHandler      
      , options            :: Array items
      , placeholder        :: String 
      , required           :: Boolean 
      , value              :: JSX
      , initValueIndex     :: Int
      )

picklist :: forall partial trash items. Union partial trash (Picklist items) => { | partial } -> JSX
picklist = element _picklistImpl
