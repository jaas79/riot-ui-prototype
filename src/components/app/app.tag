<app>
	<sidebar title="Prototipo IU" icon="fa fa-diamond">
		<sidebar-profile
			picture="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
			name="Juan Pérez González" role="Afiliado"/>
		<sidebar-menu>
			<menu-section title="General">
				<side-menu icon="fa fa-home" label="Cliente">
					<menu-item to="clienteAdministrar" label="Mantenimiento de Clientes"/>
					<menu-item to="clienteAgregar"     label="Alta de Cliente"          />
					<menu-item to="clienteEliminar"    label="Eliminar Cliente"         />
					<menu-item to="clienteEditar"      label="Editar Cliente"           />
					<menu-item to="clienteWizard"      label="Cliente Wizard"           />
				</side-menu>
				<side-menu icon="fa fa-group" label="Clientes">
				  <menu-item to="cliente-admin"      label="Administrar Cliente"/>
				  <menu-item to="cliente-agregar"    label="Agregar Cliente"/>
				</side-menu>
				<side-menu icon="fa fa-cubes" label="Pedidos">
				  <menu-item to="pedido-admin"      label="Administrar Pedido"/>
				  <menu-item to="pedido-agregar"    label="Agregar Pedido"/>
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
		<clienteWizard      id="clienteWizard"     />
		<cliente-admin			id="cliente-admin"/>
		<cliente-agregar		id="cliente-agregar"/>
		<pedido-admin				id="pedido-admin"/>
		<pedido-agregar			id="pedido-agregar"/>
		<pedido-agregar			id="pedido-agregar-paso-1"/>
		<pedido-agregar			id="pedido-agregar-paso-2"/>
		<pedido-agregar			id="pedido-agregar-paso-3"/>
	</content>
	<footerbar copyright="Softtek" link="http://www.softtek.com"></footerbar>
</app>
