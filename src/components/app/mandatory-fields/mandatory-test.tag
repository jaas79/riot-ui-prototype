<mandatory-test>
	<page title="Prueba de campos obligatorios con formbox" id="mandatory-test">
		<formbox id="datos-cliente" title="Datos del Cliente" action="create" return="/" >
			<row>
				<column size="col-md-6 col-xs-12">
					<inputbox id="nombreAgregar" type="text" label="Nombre(s)" placeholder="Ingresa el nombre del Cliente" required=true disabled=false minsize=3 maxsize=25/>
					<inputbox id="phone-number" type="phone" value="5517005656" label="Teléfono" required=true disabled=false />
					<select-box id="tipoPensionSlct" type="select" placeholder="Selecciona el Tipo de Pensión deseada" required=true>
						<option-box id="ipx" label="Incapacidad Permanente Parcial" />
						<option-box id="ipy" label="Incapacidad Permanente Total"/>
					</select-box>
				</column>
		</formbox>
	</page>
</mandatory-test>