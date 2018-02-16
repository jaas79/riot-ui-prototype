<cliente-agregar>
  <page title="Agregar Cliente" id="cliente-agregar">
    <formbox title="Datos del Cliente" action="create" return="/clientes-admin/">
      <panel label="Generales">
        <row>
          <column size="col-md-6 col-xs-12">
            <inputbox id="numero-cliente" type="text" label="Número" value="" placeholder="Número del Cliente" required=true disabled=false minsize=3 maxsize=100 />
            <inputbox id="nombre-cliente" type="text" label="Nombre" value="" placeholder="Nombre del Cliente" required=true disabled=false minsize=3 maxsize=100 />
          </column>
          <column size="col-md-6 col-xs-12">
            <inputbox id="direccion" type="textarea" lines=5 label="Dirección" value="" placeholder="Dirección del Cliente" required=true disabled=false minsize=3 maxsize=500 />
          </column>
        </row>
      </panel>
      <panel label="Crédito">
        <inputbox id="credito" type="currency" label="Crédito aprobado" value="" precision=2 placeholder="Crédito aprobado del Cliente" required=true disabled=false min=0.00 max=1000000.00 />
        <inputbox id="observaciones" type="textarea" lines=5 label="Observaciones" value="" placeholder="Ingresar observaciones" required=true disabled=false minsize=3 maxsize=500 />
      </panel>
    </formbox>
  </page>
</cliente-agregar>
