module Salesforce.DesignSystem.Components.ComboBox where


import Data.Function.Uncurried (runFn1)
import Data.Symbol (SProxy(..))
import Salesforce.DesignSystem.Components.Internal (_comboBoxImpl, _comboBoxFilterImpl)
import Effect.Uncurried (EffectFn2)
import Prelude (Unit, mempty)
import Prim.Row (class Lacks, class Union)
import React.Basic (JSX, element, empty)
import React.Basic.Events (EventHandler, SyntheticEvent)
import Record as Record

type ComboBoxFilterProps 
  = ( limit :: Int )


type ComboboxProps
    = ( assistiveText                  :: String 
      , className                      :: String 
      , classNameContainer             :: String 
      , classNameMenu                  :: String 
      , classNameMenuSubHeader         :: String 
      , errorText                      :: String 
      , fieldLevelHelpTooltip          :: JSX
      , hasStaticAlignment             :: Boolean 
      , id                             :: String 
      , isOpen                         :: Boolean 
      , inheritWidthOf                 :: String 
      , menuItem                       :: EventHandler
      , menuPosition                   :: String 
      , menuMaxWidth                   :: String 
      , multiple                       :: Boolean 
      , options                        :: Array ComboBoxOptions
      , readOnlyMenuItemVisibleLength  :: Int 
      , predefinedOptionsOnly          :: Boolean
      , required                       :: Boolean 
      , selection                      :: Array ComboBoxOptions
      , selectedListboxRef             :: EventHandler
      , value                          :: String 
      , variant                        :: String
      )
  
type EventProps 
    = ( onBlur                        :: EventHandler
      , onChange                      :: EventHandler 
      , onClose                       :: EventHandler 
      , onFocus                       :: EventHandler 
      , onOpen                        :: EventHandler 
      , onRequestClose                :: EventHandler
      , onRequestRemoveSelectedOption :: EventHandler 
      , onSelect                      :: EffectFn2 SyntheticEvent (Array ComboBoxOptions) Unit
      , onSubmit                      :: EventHandler 
      )

type ComboBoxLabelProps 
    = ( label                   :: JSX 
      , multipleOptionsSelected :: String 
      , noOptionsFound          :: JSX 
      , placeholder             :: String 
      , placeholderReadOnly     :: String 
      , removePillTitle         :: String 
      )

type OptionProps
    = ( id       :: String 
      , label    :: String 
      , subTitle :: String 
      , "type"   :: String
      , icon     :: JSX
      )

type ComboBoxOptions = Record OptionProps

comboBox :: forall props others labels events trash. Union props others ComboboxProps 
         => Union labels trash ComboBoxLabelProps 
         => Lacks "labels" props
         => Lacks "events" props
         =>  { | props } -> { | labels } -> { | events } -> JSX
comboBox props lbls evts = element _comboBoxImpl newProps
  where 
    withLblsProps = Record.insert (SProxy :: SProxy "labels") lbls props
    newProps    = Record.insert (SProxy :: SProxy "events") evts withLblsProps

comboBoxFilter :: forall props trash. Union props trash ComboBoxFilterProps 
               => { options    :: Array ComboBoxOptions
                  , selection  :: Array ComboBoxOptions
                  , inputValue :: String
                  | props 
                  }
               -> Array ComboBoxOptions
comboBoxFilter = runFn1 _comboBoxFilterImpl

defaultOptions :: ComboBoxOptions
defaultOptions = {id: mempty, label: mempty, subTitle: mempty, "type": mempty, icon: empty}