<reservaciones-01-buscar>
<page>
 <panel label="Buscar Vuelos Resultados">
   <row>
      <panel label="Saliendo">
	    <table-results id="salidas" action="select-multi"/>
	  </panel>
   </row>
   <row>
      <panel label="Regresando">
	    <table-results id="llegadas" action="select-multi"/>
	  </panel>
   </row>
 </panel>
  <submit-button to="/reservaciones-01-buscar-vuelo-seleccionado/" action="return"> </submit-button>
 </page>
</reservaciones-01-buscar>

<reservaciones-01-consultar>
<page>
 <panel label="Consultat Vuelo">
   <row>
     
	    <inputbox id="consultar" type=text/>
      <submit-button to="/reservaciones-01-buscar-vuelo-seleccionado/" action="return"> </submit-button>
	
   </row>
 </panel>
  
 </page>
</reservaciones-01-consultar>
