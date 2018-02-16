<clienteEditar>
	<page id="cliente_editar" title="Editar Cliente" caption="Editar Cliente">
		<formbox title="Datos del Cliente" action="update" return="/cliente-administrar/">
		    <inputbox type="text" id="numeroCliente"  label="Número"              value="E009"         required=true />
			<inputbox type="text" id="nombreCliente"  label="Nombre"              value="Juan López"   required=true />
			<inputbox type="text" id="creditoCliente" label="Crédito autorizado"  value="18000"        required=true />
		</formbox>
	</page>
</clienteEditar>
