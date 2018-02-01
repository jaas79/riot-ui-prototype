<clienteAgregar>
  <page caption="Agregar Cliente" id="cliente_agregar">
    <formbox title="Datos del Cliente" action="create" return="clienteAdministrar" >
		<panel label="Datos generales">
			<inputbox type="number" id="numeroCliente"   label="Número"    placeholder="Número de Cliente" required=true    />
			<inputbox type="text" id="nombreCliente"   label="Nombre"    placeholder="Nombre del Cliente" required=true   />
		</panel>
		<panel label="Información adicional">
			<inputbox type="text" id="fechaNacimiento" label="Fecha de Nacimiento"   required=false />
			<inputbox type="text" id="creditoCliente"  label="Crédito autorizado"    placeholder="Monto máximo del Crédito autorizado" required=true min=0 max=100000 />
			<inputbox type="email" id="email"  label="Email" value="efuentes@softtek.com" placeholder="Ingresa tu correo (p.ej. ejemplo@mail.com)" required=true disabled=false />
			<inputbox type="text" id="comentarios"     label="Comentarios"           placehoder="Ponga aquí cualquier observación importante." required=false   />
		</panel>
		<panel label="Tipo de pensión">
			<select-box id="tipoPension" type="option" placeholder="Selecciona el Tipo de Pensión deseada">
				<option-box id="ipp" label="Incapacidad Permanente Parcial"/>
				<option-box id="ipt" label="Incapacidad Permanente Total" />
			</select-box>
			<select-box id="tipoPension" type="check" placeholder="Selecciona el Tipo de Pensión deseada">
				<option-box id="ipp" label="Incapacidad Permanente Parcial"/>
				<option-box id="ipt" label="Incapacidad Permanente Total" />
			</select-box>
		</panel>
    </formbox>
  </page>
</clienteAgregar>
