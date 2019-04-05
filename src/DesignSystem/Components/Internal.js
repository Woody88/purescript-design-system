var Button = require('@salesforce/design-system-react/lib/components/button');
var Alert = require('@salesforce/design-system-react/lib/components/alert');
var PageHeader = require('@salesforce/design-system-react/lib/components/page-header');
var IconSettings = require('@salesforce/design-system-react/lib/components/icon-settings');
var Icon = require('@salesforce/design-system-react/lib/components/icon');
var Toast = require('@salesforce/design-system-react/lib/components/toast/index');
var ToastContainer = require('@salesforce/design-system-react/lib/components/toast/container');
var Spinner = require('@salesforce/design-system-react/lib/components/spinner');
var Tabs = require('@salesforce/design-system-react/lib/components/tabs/');
var TabsPanel = require('@salesforce/design-system-react/lib/components/tabs/private/tab-panel');
var DataTable = require('@salesforce/design-system-react/lib/components/data-table/index');
var Cell = require('@salesforce/design-system-react/lib/components/data-table/cell');
var Column = require('@salesforce/design-system-react/lib/components/data-table/column');
var HighlightCell = require('@salesforce/design-system-react/lib/components/data-table/highlight-cell');
var ComboBox = require('@salesforce/design-system-react/lib/components/combobox/combobox');
var Datepicker = require('@salesforce/design-system-react/lib/components/date-picker/index');
var Lookup = require('@salesforce/design-system-react/lib/components/lookup/lookup');
var Picklist = require('@salesforce/design-system-react/lib/components/menu-picklist/index');
var ComboBoxFilter = require('@salesforce/design-system-react/lib/components/combobox/filter');
//var standardIcons = require('@salesforce/design-system-react/lib/icons/standard');
var Dropdown = require('@salesforce/design-system-react/lib/components/menu-dropdown/menu-dropdown');
var ButtonTrigger = require('@salesforce/design-system-react/lib/components/menu-dropdown/button-trigger');
var Card = require('@salesforce/design-system-react/lib/components/card/index');
var CardFilter = require('@salesforce/design-system-react/lib/components/card/filter');
var CardEmpty = require('@salesforce/design-system-react/lib/components/card/empty');
var ButtonGroup = require('@salesforce/design-system-react/lib/components/button-group/index');

exports._buttonImpl = Button.default;

exports._alertImpl = Alert.default;

exports._pageHeaderImpl = PageHeader.default;

exports._iconSettingsImpl = IconSettings.default;

exports._iconImpl = Icon.default;

exports._toastImpl = Toast.default;

exports._toastContainerImpl = ToastContainer.default;

exports._spinnerImpl = Spinner.default;

exports._tabsImpl = Tabs.default;

exports._tabsPanelImpl = TabsPanel.default;

exports._dataTableImpl = DataTable.default;

exports._cellImpl = Cell.default;

exports._columnImpl = Column.default;

exports._highlightCellImpl = HighlightCell.default;

exports._comboBoxImpl = ComboBox.default;

exports._datepickerImpl = Datepicker.default;

exports._lookupImpl = Lookup.default;

exports._picklistImpl = Picklist.default;

exports._comboBoxFilterImpl = ComboBoxFilter.default;

// exports._standardIcons = standardIcons.default;

exports._dropdownImpl = Dropdown.default;

exports._buttonTriggerImpl = ButtonTrigger.default;

exports._cardImpl = Card.default;

exports._cardFilterImpl = CardFilter.default;

exports._cardEmptyImpl = CardEmpty.default;

exports._buttonGroupImpl = ButtonGroup.default;
