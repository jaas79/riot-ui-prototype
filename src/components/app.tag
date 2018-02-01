<app>
<<<<<<< HEAD
	<sidebar title="Prototipo IU" icon="fa fa-diamond">
		<sidebar-profile
			picture="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
			name="Juan Pérez González" role="Afiliado"/>
=======
    <topbar></topbar>
	<sidebar>
		<sidebar-profile picture="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" name="Juan Pérez" role="Administrador"/>
>>>>>>> aabc00bb5e5e5cf0978ae769b45c1dc87690cac2
		<sidebar-menu>
			<menu-section title="General">
				<side-menu icon="fa fa-home" label="Clientes">
					<menu-item to="clienteAdministrar" label="Mantenimiento de Clientes"/>
					<menu-item to="clienteAgregar"     label="Alta de Cliente"          />
					<menu-item to="clienteEliminar"    label="Eliminar Cliente"         />         
					<menu-item to="clienteEditar"      label="Editar Cliente"           />
					<menu-item to="proyeccionPension"  label="Wizard"                   />
				</side-menu>
			</menu-section>
		</sidebar-menu>
	</sidebar>
  <topbar></topbar>
	<content>
		<clienteAdministrar id="clienteAdministrar"/>
		<clienteEliminar    id="clienteEliminar"   /> 
		<clienteAgregar     id="clienteAgregar"    /> 
		<clienteEditar      id="clienteEditar"     />
		<form-wizard id="proyeccionPension" title="Proyección de Pensión" nextbutton="Siguiente" prevbutton="Anterior" donebutton="Finalizar">
            <step-wizard id="paso1" title="Ingresar Datos">
                <clienteAdministrar id="clienteAdministrar2"/>
            </step-wizard>
		    <step-wizard id="paso2" title="Paso numero 2 Editar Cliente" >
                <clienteEditar      id="clienteEditar2" />
            </step-wizard>
	        <step-wizard id="paso3" title="Paso 3">
                <panel label="Datos generales 3">
                </panel>
            </step-wizard>
		    <step-wizard id="paso4" title="PAso 4">
                <panel label="Datos generales 4">
                </panel>
            </step-wizard>
		    <step-wizard id="paso5" title="Paso numero5">
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
	</content>
	<footerbar copyright="Softtek" link="http://www.softtek.com"></footerbar>
</app>