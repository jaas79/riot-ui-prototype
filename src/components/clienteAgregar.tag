<clienteAgregar>
  <page caption="Agregar Cliente" id="cliente_agregar">
    <formbox title="Datos del Cliente" action="create" return="clienteAdministrar" >
  		<panel label="Datos generales">
  			<inputbox type="number" id="numeroCliente"   label="Número"    placeholder="Número de Cliente" required=true    />
  			<inputbox id="nombre" type="text" label="Nombre(s)" value="Héctor Javier" placeholder="Ingresa el nombre del Cliente" required=true disabled=false minsize=3 maxsize=100 />
			<inputbox id="observaciones" type="textarea" lines=5 label="Observaciones" value="Estas son mis observaciones..." placeholder="Ingresa tus comentarios" required=true disabled=false minsize=3 maxsize=500 />
			<inputbox id="monto-aprobado" type="currency" label="Monto del Pedido aprobado" value="100000.00" precision=2 placeholder="Ingresa el monto del Pedido aprobado" required=true disabled=false min=1.00 max=1000000.00 />
			<inputbox id="horas-aplicadas" type="float" label="Horas aplicadas" value="6.50" precision=2 placeholder="Ingresa las horas aplicadas al proyecto" required=true disabled=false min=0.50 max=8.00 />
			<date-picker id="fecha-nacimiento" type="date" label="Fecha de Nacimiento" value="2018-01-15" placeholder="Ingresa tu fecha de nacimiento" required=true disabled=false format="YYYY/MM/DD" min-date="2018-01-05" max-date="2018-01-20" />
  		</panel>
  		<panel label="Información adicional">
  			<inputbox type="text" id="fechaNacimiento" label="Fecha de Nacimiento"   required=false />
  			<inputbox type="text" id="creditoCliente"  label="Crédito autorizado"    placeholder="Monto máximo del Crédito autorizado" required=true disabled=true min=0 max=100000 />
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
