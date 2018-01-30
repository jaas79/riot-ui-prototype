<clienteAgregar id="clienteAgregar">
<page caption="Alta de Cliente" id="cliente_agregar">
    <formbox title="Datos del Cliente" action="create" return="clienteAdministrar" >
	    <panel label="Datos generales">
          <inputbox id="numeroCliente"   label="Número"    placeholder="Número de Cliente" required=true    />
          <inputbox id="nombreCliente"   label="Nombre"    placeholder="Nombre del Cliente" required=true   />
        </panel>
		<panel label="Información adicional">
		  <inputbox id="fechaNacimiento" label="Fecha de Nacimiento"   required=false />
		  <inputbox id="creditoCliente"  label="Crédito autorizado"    placeholder="Monto máximo del Crédito autorizado" required=true min=0 max=100000 />
          <inputbox id="correo"          label="Correo electrónico"    placeholder="p.ej. usuario@mail.com" required=false />
          <inputbox id="comentarios"     label="Comentarios"           placehoder="Ponga aquí cualquier observación importante." required=false   />
		</panel>
    </formbox>
</page>
</clienteAgregar>