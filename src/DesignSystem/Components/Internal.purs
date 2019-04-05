module Salesforce.DesignSystem.Components.Internal where 

import Data.Function.Uncurried (Fn1)
import React.Basic (ReactComponent)

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

foreign import _dropdownImpl :: forall props. ReactComponent { | props }

foreign import _buttonTriggerImpl :: forall props. ReactComponent { | props }

foreign import _cardImpl :: forall props. ReactComponent { | props }

foreign import _cardFilterImpl :: forall props. ReactComponent { | props }

foreign import _cardEmptyImpl :: forall props. ReactComponent { | props }

foreign import _buttonGroupImpl :: forall props. ReactComponent { | props }