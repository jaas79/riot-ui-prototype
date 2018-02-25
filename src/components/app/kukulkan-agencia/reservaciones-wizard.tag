<reservaciones-wizard>
	<page title="Reservar Vuelo"  id="reservaciones_wizard">
	  <panel label="Reservar Vuelo">
  		  <form-wizard id="reservaciones" title="Pasos para Reservación de Vuelo" nextbutton="Siguiente" prevbutton="Anterior" donebutton="Finalizar" return="/reservaciones-wizard/">
		    <step-wizard id="paso1" title="Búsqueda de Vuelo">
                <reservaciones-01 id="/reservaciones-01/"/>
            </step-wizard>
		    <step-wizard id="paso2" title="Datos de Contacto" >
                <reservaciones-02 id="/reservaciones-02/"/>
            </step-wizard>
	        <step-wizard id="paso3" title="Paso 3">
            </step-wizard>
		  </form-wizard>
		</panel>
  </page>
</reservaciones-wizard>
