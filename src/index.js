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
import './common/page.tag'
import './common/formbox.tag'
import './common/inputbox.tag'
import './common/search.tag'
import './common/sidebar.tag'
import './common/topbar.tag'
import './common/footerbar.tag'
import './common/searchpanel.tag'
import './common/content.tag'
import './common/panel.tag'
import './common/menu-item.tag'
import './common/edit-button.tag'
import './common/delete-button.tag'
import './common/submit-button.tag'
import './common/menu-section.tag'
import './common/side-menu.tag'
import './common/sidebar-menu.tag'
import './common/sidebar-profile.tag'
import './common/select-box.tag'
import './common/option-box.tag'
import './common/form-wizard.tag'
import './common/step-wizard.tag'
import './common/date-picker.tag'
import './common/row.tag'
import './common/column.tag'
const json = require('./tabledata.js')
for (var i = 0; i < json.ids.length; i++) {
  var js = json.ids[i]
  localStorage.setItem('rows_' + js[i].id, JSON.stringify(js[i].rows))
  localStorage.setItem('header_' + js[i].id, JSON.stringify(js[i].headers))
  localStorage.setItem('actions_' + js[i].id, JSON.stringify(js[i].actions))
}
riot.mount('*')
