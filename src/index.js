'use strict'

if (module.hot) {
  module.hot.accept()
}

import riot from 'riot'
import './styles/index.scss'

import './components/app.tag'
import './components/page.tag'
import './components/formbox.tag'
import './components/inputbox.tag'
import './components/search.tag'
import './components/sidebar.tag'
import './components/topbar.tag'
import './components/footerbar.tag'
import './components/searchpanel.tag'
import './components/content.tag'
import './components/panel.tag'
import './components/clienteEliminar.tag'
import './components/clienteAgregar.tag'
import './components/clienteEditar.tag'
import './components/clienteAdministrar.tag'
import './components/menu-item.tag'
import './components/edit-button.tag'
import './components/delete-button.tag'
import './components/submit-button.tag'
import './components/menu-section.tag'
import './components/side-menu.tag'
import './components/sidebar-menu.tag'
import './components/sidebar-profile.tag'

const json = require('./tabledata.js')
for (var i = 0; i < json.ids.length; i++) {
  var js = json.ids[i]
  localStorage.setItem('rows_' + js[i].id, JSON.stringify(js[i].rows))
  localStorage.setItem('header_' + js[i].id, JSON.stringify(js[i].headers))
}
riot.mount('app')
riot.mount('topbar')
riot.mount('footerbar')
riot.mount('searchresults')
// Ocultamos a partir del componente 2
var innerchildren = document.getElementById('contentid').children
for (var j = 2; j < innerchildren.length; j++) {
  document.getElementById('contentid').children[j].style.display = 'none'
}
// riot.mount('clienteEliminar')
// riot.mount('resultsheader')
// riot.mount('resultsrow')
// riot.mount('columnheader')
