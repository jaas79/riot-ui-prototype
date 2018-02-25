<reservaciones-01-buscar-vuelo-seleccionado>
<page>
 <panel label="Vuelos Seleccionados">
   <row>
      <column size="col-md-6 col-xs-12">
        <outputtext id="reserva" label="Tu reservación es:" value="4KL89453"/>
      </column size="col-md-6 col-xs-12">
   </row>
   <row>
      <panel label="Vuelo de Salida">
        <row>
          <column size="col-md-6 col-xs-12">
            <outputtext id="reserva" label="Viernes 1 de Diciembre del 2017" value=""/>
          </column size="col-md-6 col-xs-12">
        </row>
	    <table-results id="ida"/>
	  </panel>
   </row>
   <row>
      <panel label="Vuelo de Regreso">
        <row>
         <column size="col-md-6 col-xs-12">
           <outputtext id="reserva" label="Viernes 15 de Diciembre del 2017" value=""/>
          </column size="col-md-6 col-xs-12">
        </row>
	    <table-results id="regreso"/>
	  </panel>
   </row>
 </panel>
  <submit-button to="/reservaciones-wizard/" action="return"> </submit-button>
 </page>
</reservaciones-01-buscar-vuelo-seleccionado>
