module Salesforce.DesignSystem.Components.Internal where 

import Prelude

import Data.Function.Uncurried (Fn1)
import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM.Internal (CSS)
import React.Basic.Events (EventHandler)


data ButtonType = Reset | Submit | Button 

type ButtonGroupProps 
  = ( variant   :: String 
    , className :: String 
    , children  :: Array JSX
    , labels    :: { labels :: String, error :: String }
    )

type DSSharedProps props 
  = ( style     :: CSS
    , variant   :: String 
    , className :: String 
    , children  :: Array JSX
    | props
    )

type ButtonProps 
    = ( onBlur        :: EventHandler
      , onClick       :: EventHandler
      , onFocus       :: EventHandler
      , onKeyDown     :: EventHandler
      , onKeyPress    :: EventHandler
      , onKeyUp       :: EventHandler
      , onMouseDown   :: EventHandler
      , onMouseEnter  :: EventHandler
      , onMouseLeave  :: EventHandler
      , onMouseUp     :: EventHandler
      , buttonRef     :: EventHandler 
      , responsive    :: Boolean 
      , inverse       :: Boolean 
      , hint          :: Boolean 
      , disabled      :: Boolean 
      , iconCategory  :: String
      , iconClassName :: String 
      , iconName      :: String 
      , iconPath      :: String 
      , iconPosition  :: String 
      , iconSize      :: String 
      , iconVariant   :: String 
      , id            :: String 
      , label         :: String 
      , tabIndex      :: String 
      , "type"        :: ButtonType 
      , title         :: String 
      )

type AlertProps 
    = ( onBlur        :: EventHandler
      , onClick       :: EventHandler
      , onFocus       :: EventHandler
      , onKeyDown     :: EventHandler
      , onKeyPress    :: EventHandler
      , onKeyUp       :: EventHandler
      , onMouseDown   :: EventHandler
      , onMouseEnter  :: EventHandler
      , onMouseLeave  :: EventHandler
      , onMouseUp     :: EventHandler
      , buttonRef     :: EventHandler 
      , responsive    :: Boolean 
      , inverse       :: Boolean 
      , hint          :: Boolean 
      , disabled      :: Boolean 
      , iconClassName :: String 
      , iconName      :: String 
      , iconPath      :: String 
      , iconPosition  :: String 
      , iconSize      :: String 
      , iconVariant   :: String 
      , id            :: String 
      , label         :: String 
      , tabIndex      :: String 
      , "type"        :: ButtonType 
      , title         :: String 
      )

type ToastContainer 
  = ( className :: String
    , children  :: JSX
    )

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
    )

type PageDetailBlock 
  = ( className :: String 
    , label     :: JSX
    , content   :: JSX 
    , truncate  :: Boolean 
    , flavor    :: String 
    )

type IconSettingsProps 
  = ( iconPath          :: String 
    , onRequestIconPath :: EventHandler 
    , actionSprite      :: String 
    , customSprite      :: String 
    , standardSprite    :: String 
    , utilitySprite     :: String 
    )

type IconProps r
  = ( assistiveText     :: Record (label :: String)  
    , category          :: String 
    , colorVariant      :: String 
    , inverse           :: String 
    , name              :: String 
    , path              :: String
    , size              :: String 
    , title             :: String 
    , icon              :: r 
    )

type StandardIcons =
  (account :: Record IconSvgProps)


type IconSvgProps 
  = ( xmlns :: String 
    , viewBox :: String
    , path :: Record ( d :: String ) 
    )

type ToastProps 
  = ( assistiveText      :: Record (closeButton :: JSX) 
    , duration           :: Number 
    , labels             :: Record ToastLabels
    , onClickHeadingLink :: EventHandler
    , onRequestClose     :: EventHandler
    , icon               :: JSX 
    , style              :: CSS
    , variant            :: String 
    , className          :: String 
    , children           :: Array JSX
    )

type ToastLabels 
  = ( details     :: JSX
    , heading     :: JSX 
    , headingLink :: JSX
    )

type SpinnerProps 
  = ( assistiveText       :: Record ( label :: String )
    , containerClassName	:: String 
    , id                  :: String 
    , isInput             :: Boolean
    , size                :: String 
    , variant             :: String
    )

data ToastVariant = Error | Info | Success | Warning 

instance showToastVariant :: Show ToastVariant where 
  show Error   = "error"
  show Info    = "info"
  show Success = "success"
  show Warning = "warning"    


button :: forall partial trash. Union partial trash (DSSharedProps ButtonProps) => { | partial } -> JSX
button = element _buttonImpl

buttonGroup :: forall partial trash. Union partial trash ButtonGroupProps => { | partial } -> JSX
buttonGroup = element _buttonGroupImpl

alert :: forall partial trash. Union partial trash (DSSharedProps AlertProps) => { | partial } -> JSX
alert = element _alertImpl

pageHeader :: forall partial trash. Union partial trash (DSSharedProps PageHeaderProps) => { | partial } -> JSX
pageHeader = element _pageHeaderImpl

iconSettings :: forall partial trash. Union partial trash (DSSharedProps IconSettingsProps) => { | partial } -> JSX
iconSettings = element _iconSettingsImpl

icon :: forall partial trash r. Union partial trash (DSSharedProps (IconProps r)) => { | partial } -> JSX
icon = element _iconImpl

toast :: forall partial trash . Union partial trash ToastProps => { | partial } -> JSX
toast = element _toastImpl

toastContainer :: forall props partial trash. Union partial trash (DSSharedProps props) => { | partial } -> JSX
toastContainer = element _toastContainerImpl

spinner :: forall partial trash. Union partial trash SpinnerProps => { | partial } -> JSX
spinner = element _spinnerImpl



foreign import _buttonImpl :: forall props. ReactComponent { | props }

foreign import _alertImpl :: forall props. ReactComponent { | props }

foreign import _pageHeaderImpl :: forall props. ReactComponent { | props }

foreign import _iconSettingsImpl :: forall props. ReactComponent { | props }

foreign import _iconImpl :: forall props. ReactComponent { | props }

foreign import _toastImpl :: forall props. ReactComponent { | props }

foreign import _toastContainerImpl :: forall props. ReactComponent { | props }

foreign import _spinnerImpl :: forall props. ReactComponent { | props }

foreign import _tabsImpl :: forall props. ReactComponent { | props }

foreign import _tabsPanelImpl :: forall props. ReactComponent { | props }

foreign import _dataTableImpl :: forall props. ReactComponent { | props }

foreign import _cellImpl :: forall props. ReactComponent { | props }

foreign import _columnImpl :: forall props. ReactComponent { | props }

foreign import _highlightCellImpl :: forall props. ReactComponent { | props }

foreign import _comboBoxImpl :: forall props. ReactComponent { | props }

foreign import _datepickerImpl :: forall props. ReactComponent { | props }

foreign import _lookupImpl :: forall props. ReactComponent { | props }

foreign import _picklistImpl :: forall props. ReactComponent { | props }

foreign import _comboBoxFilterImpl :: forall a b. Fn1 a b

foreign import _standardIcons :: Record StandardIcons

foreign import _dropdownImpl :: forall props. ReactComponent { | props }

foreign import _buttonTriggerImpl :: forall props. ReactComponent { | props }

foreign import _cardImpl :: forall props. ReactComponent { | props }

foreign import _cardFilterImpl :: forall props. ReactComponent { | props }

foreign import _cardEmptyImpl :: forall props. ReactComponent { | props }

foreign import _buttonGroupImpl :: forall props. ReactComponent { | props }