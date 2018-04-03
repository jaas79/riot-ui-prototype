<cargos-ops>
  <page title="Cargos en cuenta via Ops" id="cargos-ops">
    <searchpanel>
       <searchcriteria>
           <date-picker id="fecha-inicio" type="date" label="Fecha de Inicio" value="2018-02-01" placeholder="Ingresa la fecha de inicio" required=true disabled=false format="yyyy/mm/dd" mindate="2000-01-01" maxdate="2018-12-31" />
           <date-picker id="fecha-final" type="date" label="Fecha Final" value="2018-02-28" placeholder="Ingresa la fecha de inicio" required=true disabled=false format="yyyy/mm/dd" mindate="2000-01-01" maxdate="2018-12-31" />
       </searchcriteria>
       <searchresults id="cargos-ops-data" delete="cargo-eliminar">
       </searchresults>
    </searchpanel>
  </page>
</cargos-ops>
