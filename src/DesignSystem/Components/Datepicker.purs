module Salesforce.DesignSystem.Components.Datepicker where 

import Prelude (Unit)
import Prim.Row (class Union)

import Data.JSDate (JSDate)
import Data.Nullable (Nullable)
import Salesforce.DesignSystem.Components.Internal (_datepickerImpl)
import Effect.Uncurried (EffectFn2)
import React.Basic (JSX, element)
import React.Basic.Events (EventHandler, SyntheticEvent)

type DateOptions = { date :: JSDate, formattedDate :: String, timezoneOffset :: Array Int }

type DatepickerProps 
    = ( assistiveText      :: String 
      , align              :: String 
      , className          :: String 
      , formattedValue     :: String
      , id                 :: String 
      , triggerClassName   :: String 
      , menuPosition       :: String 
      , disabled           :: Boolean 
      , hasStaticAlignment :: Boolean 
      , dateDisabled       :: EventHandler
      , formatter          :: EventHandler
      , onCalendarFocus    :: EventHandler 
      , onChange           :: EffectFn2 SyntheticEvent DateOptions Unit
      , onClose            :: EventHandler
      , onOpen             :: EventHandler
      , onRequestClose     :: EventHandler
      , onRequestOpen      :: EventHandler
      , parser             :: EventHandler
      , labels             :: Record DateLabelProps
      , input              :: JSX
      , isOpen             :: Boolean 
      , isIsoWeekday       :: Boolean 
      , relativeYearFrom   :: Int 
      , relativeYearTo     :: Int 
      , value              :: Nullable JSDate
      )    

type DateLabelProps
    = ( abbreviatedWeekDays :: Array String
	  , label               :: String
	  , months              :: Array String
	  , placeholder         :: String
	  , today               :: String
	  , weekDays            :: Array String
      )

datepicker :: forall partial trash. Union partial trash DatepickerProps => { | partial } -> JSX
datepicker = element _datepickerImpl