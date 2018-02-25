<reservaciones-02>
 <panel label="Datos de Contacto">
		  <inputbox type="text" id="nombre"  label="Nombre"             value=""   required=true />
			<inputbox type="text" id="apellidos"  label="Apellidos"       value=""   required=true />
       <select-box id="sexo" placeholder="Sexo" type="option">
         	<option-box id="hombre" label="Hombre" />
        	<option-box id="mujer" label="Mujer" />
       <select-box>
			<inputbox type="email" id="correo" label="Correo"   value=""  required=true />
			<inputbox type="text" id="celular" label="Celular"  value=""  required=true />
 </panel>
  <submit-button to="/reservaciones-wizard/" action="create"> </submit-button>
  <submit-button to="/reservaciones-wizard/" action="return"> </submit-button>
</reservaciones-02>
