<cargos-ligados-contratos>
  <page title="Asignación de adeudos por Cliente" id="cargos-ligados-contratos">
    <searchpanel>
       <searchcriteria>
         <inputbox id="numero-cliente" type="text" label="Cliente" value="" placeholder="Número del Cliente" required=true disabled=false minsize=3 maxsize=100 />
         <select-box id="contrato" type="select" placeholder="Num. Contrato" required=true>
           <option-box id="contrato-01" label="Contrato 01"/>
           <option-box id="contrato-02" label="Contrato 02" />
         </select-box>
         <select-box id="tipo-moneda" type="select" placeholder="Tipo Moneda" required=true>
           <option-box id="tipo-moneda-01" label="MXP"/>
           <option-box id="tipo-moneda-02" label="USD" />
         </select-box>
         <inputbox id="factor-moratorio" type="text" label="Factor Moratorio" value="" placeholder="Factor moratorio" required=true disabled=false minsize=3 maxsize=100 />
         <date-picker id="fecha-consulta" type="date" label="Fecha Consulta" value="2018-02-01" placeholder="Ingresa la fecha de consulta" required=true disabled=false format="YYYY/MM/DD" mindate="2000-01-01" maxdate="2018-12-31" />
         <select-box id="adeudos" type="check" placeholder="Adeudos" required=true>
           <option-box id="adeudo-01" label="Rentas"/>
           <option-box id="adeudo-02" label="Opciones de compra" />
           <option-box id="adeudo-03" label="Valor futuro" />
           <option-box id="adeudo-04" label="Incluir cobros de recaudaciones" />
           <option-box id="adeudo-05" label="Abono a Capital" />
           <option-box id="adeudo-06" label="Prepago total" />
           <option-box id="adeudo-07" label="Prepago parcial" />
         </select-box>
       </searchcriteria>
       <searchresults id="cargos-ligados-contratos-data" edit="/cargos-ligados-contratos-editar/" delete="cargos-ligados-contratos-eliminar">
       </searchresults>
    </searchpanel>
  </page>
</cargos-ligados-contratos>
