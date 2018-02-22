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
  </page>
</clienteAdministrar>
