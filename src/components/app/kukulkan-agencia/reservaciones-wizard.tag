<reservaciones-wizard>
	<page title="Reservar Vuelo"  id="reservaciones_wizard">
	  <panel label="Reservar Vuelo">
  		  <form-wizard id="reservaciones" title="Pasos para Reservación de Vuelo" nextbutton="Siguiente" prevbutton="Anterior" donebutton="Finalizar" return="/cliente-administrar/">
		    <step-wizard id="paso1" title="Datos Iniciales">
                <reservaciones-01 id="/reservaciones-01/"/>
            </step-wizard>
		    <step-wizard id="paso2" title="Paso 2" >
            </step-wizard>
	        <step-wizard id="paso3" title="Paso 3">
            </step-wizard>
		  </form-wizard>
		</panel>
  </page>
</reservaciones-wizard>
