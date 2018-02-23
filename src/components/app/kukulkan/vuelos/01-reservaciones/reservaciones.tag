<reservaciones>
	<page title="Reservaciones" id="reservaciones">
		<formbox title="Vuelos" action="search" return="/buscar-vuelos/">
			<panel label="Buscar vuelos">
				<select-box id="tipo-vuelo" placeholder="Tipo de vuelo" type="option">
					<option-box id="one-way" label="Sencillo" />
					<option-box id="round-trip" label="Redondo" />
				</select-box>
				<row>
					<column size="col-md-4 col-xs-12">
						<select-box id="from" placeholder="De:" type="select">
							<option-box id="from-cdmx" label="Ciudad de México" />
							<option-box id="from-cun" label="Cancún" />
						</select-box>
					</column>
					<column size="col-md-4 col-xs-12">
						<select-box id="to" placeholder="A:" type="select">
							<option-box id="to-cdmx" label="Ciudad de México" />
							<option-box id="to-cun" label="Cancún" />
						</select-box>
					</column>
				</row>
				<row>
					<column size="col-md-4 col-xs-12">
						<date-picker id="start" label="Salida" placeholder="Ingresa la fecha de salida" required=false disabled=false format="MM/DD/YYYY" />
					</column>
					<column size="col-md-4 col-xs-12">
						<date-picker id="return" label="Regreso" placeholder="Ingresa la fecha de regreso" required=false disabled=false format="MM/DD/YYYY" />
					</column>
					<column size="col-md-4 col-xs-12">
						<select-box id="promo" placeholder="Código de promoción" type="select">
							<option-box id="promo-code" label="Código de promoción" />
						</select-box>
					</column>
				</row>
				<row>
					<column size="col-md-1 col-xs-12">
						<inputbox type="number" id="adults" label="Adultos (12+ años)" value="0"/>
					</column>
					<column size="col-md-1 col-xs-12">
						<inputbox type="number" id="old" label="Adultos mayores (65+ años)" value="0"/>
					</column>
					<column size="col-md-1 col-xs-12">
						<inputbox type="numer" id="kids" label="Niños (entre 2-11 años)" value="0"/>
					</column>
					<column size="col-md-1 col-xs-12">
						<inputbox type="number" id="children" label="Infantes (menores a 2 años)" value="0"/>
					</column>
				</row>
			</panel>
		</formbox>
	</page>
</reservaciones>