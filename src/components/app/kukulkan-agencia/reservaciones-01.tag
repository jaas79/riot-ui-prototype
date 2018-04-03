<reservaciones-01>
<formbox title="Vuelos" action="search" return="/reservaciones-01-buscar/">
 <panel label="Buscar Vuelos">
   <row>
      <column size="col-md-4 col-xs-12">
         <select-box id="tipo-vuelo" placeholder="Tipo de vuelo" type="option">
					<option-box id="one-way" label="Sencillo" />
		     </select-box>
      </column>
      <column size="col-md-4 col-xs-12">
        <select-box id="tipo-vuelo" placeholder="Tipo de vuelo" type="option">
					<option-box id="round-trip" label="Redondo" />
		    </select-box>
      </column>
   </row>
   <row>
	   <column size="col-md-4 col-xs-12">
			<select-box id="from" placeholder="De:" type="select">
					<option-box id="from-cdmx" label="Ciudad de México" />
					<option-box id="from-ags" label="Aguascalientes" />
					<option-box id="from-cun" label="Cancún" />
                    <option-box id="from-zac" label="Zacatecas" />
			</select-box>
	   </column>
	   <column size="col-md-4 col-xs-12">
			<select-box id="to" placeholder="A:" type="select">
					<option-box id="to-cdmx" label="Ciudad de México" />
					<option-box id="to-ags" label="Aguascalientes" />
					<option-box id="to-cun" label="Cancún" />
                    <option-box id="to-zac" label="Zacatecas" />
			</select-box>
	   </column>
     <column size="col-md-4 col-xs-12">
	   </column>
	  </row>
    <row>
      <column size="col-md-4 col-xs-12">
		    <date-picker id="salida" label="Salida" placeholder="Ingresa la fecha de salida" required=false disabled=false format="yyyy/mm/dd" />
	    </column>
	    <column size="col-md-4 col-xs-12">
	    	<date-picker id="regreso" label="Regreso" placeholder="Ingresa la fecha de regreso" required=false disabled=false format="yyyy/mm/dd" />
	    </column>
	    <column size="col-md-4 col-xs-12">
		  <select-box id="promo" placeholder="Código de promoción" type="select">
		  	<option-box id="codigoprom" label="Código de promoción" />
		  </select-box>
	    </column>
    </row>
    <row>
      <column size="col-md-3 col-xs-12">
		   <inputbox type="number" id="adulto" label="Adultos (12+ años)" value="0"/>
	    </column>
	    <column size="col-md-3 col-xs-12">
		   <inputbox type="number" id="adultomayor" label="Adultos mayores (65+ años)" value="0"/>
	    </column>
	    <column size="col-md-3 col-xs-12">
		   <inputbox type="numer" id="menor" label="Niños (entre 2-11 años)" value="0"/>
	    </column>
	    <column size="col-md-3 col-xs-12">
		   <inputbox type="number" id="infante" label="Infantes (menores a 2 años)" value="0"/>
	    </column>
    </row>
 </panel>
 </formbox>
</reservaciones-01>
