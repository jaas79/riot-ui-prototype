<clienteEliminar>
  <page caption="Borrar Cliente" id="cliente_eliminar">
      <formbox title="Datos del Cliente" action="delete" return="clienteAdministrar">
          <inputbox required=false type="text" id="numero-eliminar"   label="Número"              value="E009"                      />
          <inputbox required=false type="text" id="nombre-eliminar"   label="Nombre"              value="Hórtencia López"           />
          <inputbox required=false type="text" id="foto"            label="Foto"                value=""           type="image"   />
          <inputbox required=false type="text" id="credito-eliminar"  label="Crédito autorizado"  value="18000"      type="currency"/>
          <inputbox required=false type="text" id="fechaNacimiento" label="Fecha de Nacimiento" value="2016/01/28" type="date"    />
      </formbox>
  </page>
</clienteEliminar>
