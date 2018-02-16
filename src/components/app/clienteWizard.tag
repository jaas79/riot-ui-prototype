<clienteWizard>
	<page title="Cliente Wizard"  id="cliente_wizard">
	  <panel label="Proyección de Pensión">
  		  <form-wizard id="proyeccionPension" title="Pasos para Proyección de Pensión" nextbutton="Siguiente" prevbutton="Anterior" donebutton="Finalizar" return="/cliente-administrar/">
		    <step-wizard id="paso1" title="Ingresar Datos">
                <clienteAdministrar id="clienteAdministrar2"/>
            </step-wizard>
		    <step-wizard id="paso2" title="Paso 2" >
               <panel label="Datos generales del paso 2">
               </panel>
            </step-wizard>
	        <step-wizard id="paso3" title="Paso 3">
                <panel label="Datos generales 3">
                </panel>
            </step-wizard>
		    <step-wizard id="paso4" title="Paso 4">
                <panel label="Datos generales 4">
                </panel>
            </step-wizard>
		    <step-wizard id="paso5" title="Paso 5">
			  <panel label="Datos Paso 5">
			   <select-box id="tipoPension1" type="option" placeholder="Selecciona el Tipo de Pensión deseada">
  				<option-box id="ipp" label="Incapacidad Permanente Parcial"/>
  				<option-box id="ipt" label="Incapacidad Permanente Total" />
  			   </select-box>
  			   <select-box id="tipoPension2" type="check" placeholder="Selecciona el Tipo de Pensión deseada">
  				<option-box id="ipp" label="Incapacidad Permanente Parcial"/>
  				<option-box id="ipt" label="Incapacidad Permanente Total" />
  			   </select-box>
			  </panel>
		    </step-wizard>
		  </form-wizard>
		</panel>
  </page>
</clienteWizard>
