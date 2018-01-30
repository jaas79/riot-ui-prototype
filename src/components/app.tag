
<app>
    <topbar></topbar>
	<sidebar>
		<sidebar-profile picture="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" name="Juan Pérez" role="Administrador"/>
		<sidebar-menu>
			<menu-section title="General">
				<side-menu icon="fa fa-home" label="Clientes">
					<menu-item to="clienteAdministrar" label="Mantenimiento de Clientes"/>
					<menu-item to="clienteAgregar"     label="Alta de Cliente"          />
					<menu-item to="clienteEliminar"    label="Eliminar Cliente"         />         
					<menu-item to="clienteEditar"      label="Editar Cliente"           />
				</side-menu>
			</menu-section>
		</sidebar-menu>
	</sidebar>
	<content>
		<clienteAdministrar/>
		<clienteEliminar   /> 
		<clienteAgregar    /> 
		<clienteEditar     /> 
	</content>
	<footerbar copyright="Softtek" link="http://www.softtek.com"></footerbar>
</app>
