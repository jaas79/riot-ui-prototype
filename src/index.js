'use strict'

if (module.hot) {
  module.hot.accept()
}

import riot from 'riot'
import './styles/index.scss'

import './components/app/app.tag'
import './components/app/clienteEliminar.tag'
import './components/app/clienteAgregar.tag'
import './components/app/clienteEditar.tag'
import './components/app/clienteAdministrar.tag'
import './components/app/clienteWizard.tag'
import './components/common/page.tag'
import './components/common/formbox.tag'
import './components/common/inputbox.tag'
import './components/common/search.tag'
import './components/common/sidebar.tag'
import './components/common/topbar.tag'
import './components/common/footerbar.tag'
import './components/common/searchpanel.tag'
import './components/common/content.tag'
import './components/common/panel.tag'
import './components/common/menu-item.tag'
import './components/common/edit-button.tag'
import './components/common/delete-button.tag'
import './components/common/submit-button.tag'
import './components/common/menu-section.tag'
import './components/common/side-menu.tag'
import './components/common/sidebar-menu.tag'
import './components/common/sidebar-profile.tag'
import './components/common/select-box.tag'
import './components/common/option-box.tag'
import './components/common/form-wizard.tag'
import './components/common/step-wizard.tag'
import './components/common/date-picker.tag'
import './components/common/row.tag'
import './components/common/column.tag'
const json = require('./tabledata.js')
for (var i = 0; i < json.ids.length; i++) {
  var js = json.ids[i]
  localStorage.setItem('rows_' + js[i].id, JSON.stringify(js[i].rows))
  localStorage.setItem('header_' + js[i].id, JSON.stringify(js[i].headers))
  localStorage.setItem('actions_' + js[i].id, JSON.stringify(js[i].actions))
}
riot.mount('*')
