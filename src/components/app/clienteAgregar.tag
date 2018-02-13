<clienteAgregar>
  <page title="Agregar Cliente" id="cliente_agregar">
    <formbox title="Datos del Cliente" action="create" return="clienteAdministrar" >
  		<panel label="Datos generales">
			<row>
				<column size="col-md-6 col-xs-12">
					<inputbox type="number" id="numeroClienteAgregar"   label="Número"    placeholder="Número de Cliente" required=true    />
					<inputbox id="nombreAgregar" type="text" label="Nombre(s)" value="Héctor Javier" placeholder="Ingresa el nombre del Cliente" required=true disabled=false minsize=3 maxsize=100 />
					<inputbox id="observacionesAgregar" type="textarea" lines=5 label="Observaciones" value="Estas son mis observaciones..." placeholder="Ingresa tus comentarios" required=true disabled=false minsize=3 maxsize=500 />
					<attach-photo id="foto" label="Foto" placeholder="Seleccione una imagen..." image="../img/foto.jpg" height:200 width:100 max-size-mb="10" file-types="jpg, png, bmp" />
				</column>
				<column size="col-md-6 col-xs-12">
					<inputbox id="monto-aprobado" type="currency" label="Monto del Pedido aprobado" value="100000.00" precision=2 placeholder="Ingresa el monto del Pedido aprobado" required=true disabled=false min=1.00 max=1000000.00 />
					<inputbox id="horas-aplicadas" type="float" label="Horas aplicadas" value="6.50" precision=2 placeholder="Ingresa las horas aplicadas al proyecto" required=true disabled=false min=0.50 max=8.00 />
					<inputbox id="palabra-clave" type="password" label="Password" placeholder="Ingresa tu password" required=true disabled=false min-size=3 max-size=100 />
					<date-picker id="fecha-nacimiento" type="date" label="Fecha de Nacimiento" value="2018-02-10" placeholder="Ingresa tu fecha de nacimiento" required=true disabled=false format="YYYY/MM/DD" mindate="2018-02-02" maxdate="2018-02-15" />
					<date-picker id="alta-seguro" type="date" label="Fecha de Alta en el Seguro" value="2018-02-15" placeholder="Ingresa la fecha de alta" required=true disabled=false format="YYYY/MM/DD" mindate="2018-02-02" maxdate="2018-02-20" />
				</column>
			</row>
  		</panel>
  		<panel label="Información adicional">
  			<inputbox type="text" id="fechaNacimiento" label="Fecha de Nacimiento"   required=false />
  			<inputbox type="text" id="creditoClienteAgregar"  label="Crédito autorizado"    placeholder="Monto máximo del Crédito autorizado" required=true disabled=true min=0 max=100000 />
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
