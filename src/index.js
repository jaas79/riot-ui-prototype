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

import './components/common/layout/page.tag'
import './components/common/layout/content.tag'

import './components/common/layout/footer/footerbar.tag'

import './components/common/layout/header/topbar.tag'

import './components/common/layout/sidebar/menu-item.tag'
import './components/common/layout/sidebar/menu-section.tag'
import './components/common/layout/sidebar/side-menu.tag'
import './components/common/layout/sidebar/sidebar-menu.tag'
import './components/common/layout/sidebar/sidebar-profile.tag'
import './components/common/layout/sidebar/sidebar.tag'

import './components/common/form/formbox.tag'
import './components/common/form/date-picker.tag'
import './components/common/form/inputbox.tag'
import './components/common/form/option-box.tag'
import './components/common/form/search.tag'
import './components/common/form/panel.tag'
import './components/common/form/select-box.tag'
import './components/common/form/attach-photo.tag'
import './components/common/form/outputtext.tag'
import './components/common/form/progress-bar.tag'

import './components/common/grid/row.tag'
import './components/common/grid/column.tag'

import './components/patterns/crud/searchpanel.tag'
import './components/patterns/crud/edit-button.tag'
import './components/patterns/crud/delete-button.tag'
import './components/patterns/crud/submit-button.tag'
import './components/patterns/crud/table-results.tag'

import './components/patterns/wizard/form-wizard.tag'
import './components/patterns/wizard/step-wizard.tag'

import './components/app/cliente/cliente-admin.tag'
import './components/app/cliente/cliente-agregar.tag'

import './components/app/pedido/pedido-admin.tag'
import './components/app/pedido/pedido-agregar.tag'
import './components/app/pedido/pedido-agregar-paso-1.tag'
import './components/app/pedido/pedido-agregar-paso-2.tag'
import './components/app/pedido/pedido-agregar-paso-3.tag'

import './components/common/form/login.tag'

const msgs = require('json-loader!./default-messages.json')
var msgJSON = JSON.stringify(msgs);
localStorage.setItem("messages", msgJSON);

const config = require('json-loader!./config.json')
var precision = '2' // 2 is the default value
for (var k = 0; k < config.keys.length; k++) {
  var ks = config.keys[k]
  if (ks.key === 'precision') {
    precision = ks.value
    break
  }
}

localStorage.setItem('precision', precision)

const json = require('./tabledata.js')
for (var i = 0; i < json.ids.length; i++) {
  var js = json.ids[i]
  localStorage.setItem('rows_' + js[i].id, JSON.stringify(js[i].rows))
  localStorage.setItem('header_' + js[i].id, JSON.stringify(js[i].headers))
  if (js[i].actions !== 'undefined') {
    localStorage.setItem('actions_' + js[i].id, JSON.stringify(js[i].actions))
  }
}
require('riot-routehandler')
var routes = [
  { route: '/login/', tag: 'login' },
  { route: '/home/', tag: 'app' },
  { route: '/cliente-administrar/', tag: 'clienteadministrar' },
  { route: '/cliente-editar/', tag: 'clienteeditar' },
  { route: '/cliente-agregar/', tag: 'clienteagregar' },
  { route: '/cliente-eliminar/', tag: 'clienteeliminar' },
  { route: '/cliente-wizard/', tag: 'clientewizard' },
  { route: '/clientes-admin/', tag: 'cliente-admin' },
  { route: '/clientes-agregar/', tag: 'cliente-agregar' },
  { route: '/pedido-admin/', tag: 'pedido-admin' },
  { route: '/pedido-agregar/', tag: 'pedido-agregar' }
]
riot.mount('*', { routes: routes, options: { hashbang: true, params: { title: 'Login Form Sample', username: 'Username', password: 'Password', link: '//' } } })

