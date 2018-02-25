<reservaciones-wizard>
	<page title="Reservar Vuelo"  id="reservaciones_wizard">
	  <panel label="Reservar Vuelo">
  		  <form-wizard id="reservaciones" title="Pasos para Reservación de Vuelo" nextbutton="Siguiente" prevbutton="Anterior" donebutton="Finalizar" return="/reservaciones-fin/">
		    <step-wizard id="paso1" title="Búsqueda de Vuelo">
                <reservaciones-01 id="/reservaciones-01/"/>
            </step-wizard>
		    <step-wizard id="paso2" title="Datos de Contacto" >
                <reservaciones-02 id="/reservaciones-02/"/>
            </step-wizard>
	        <step-wizard id="paso3" title="Datos de Reserva">
                <reservaciones-03 id="/reservaciones-03/"/>
            </step-wizard>
            <step-wizard id="paso4" title="Finalizar Reserva">
                <reservaciones-04 id="/reservaciones-04/"/>
            </step-wizard>
		  </form-wizard>
		</panel>
  </page>
</reservaciones-wizard>
