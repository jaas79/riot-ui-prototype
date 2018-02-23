<clienteAdministrar>
  <page id="mantenimientoClientes" title="Mantenimiento de Clientes" title="Mantenimiento de Clientes" description="Administración de Clientes">
      <searchpanel add="/cliente-agregar/">
         <searchcriteria>
             <search id="criterioBusqueda" type="text" caption="Buscar" placeholder="Criterio de Búsqueda"> </search>
         </searchcriteria>
         <searchresults pagination="true" id="mantenimientoClientes" edit="/cliente-editar/" delete="/cliente-eliminar/">
         </searchresults>
      </searchpanel>
      <simple-admin id="mantenimientoClientes" maxrows="8"/>
      <search-box id="searchboxsample" link="examplemodal" caption="Cliente" placeholder="Cliente Multi"/> 
      <modal-box id="examplemodal"  data="mantenimientoClientes" title="Seleccionar Cliente Modal Select-Multi" action="select-multi"/>
  
      <search-box id="searchboxsample2" link="examplemodal2" caption="Cliente2" placeholder="Cliente One"/> 
      <modal-box id="examplemodal2"  data="mantenimientoClientes" title="Seleccionar Cliente Modal Select-One" action="select-one" pagination="true"/>
  </page>
</clienteAdministrar>
