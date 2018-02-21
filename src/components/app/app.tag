<app>
	<sidebar title="Prototipo IU" icon="fa fa-diamond">
		<sidebar-profile
			picture="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
			name="Juan Pérez González" role="Afiliado"/>
		<sidebar-menu>
			<menu-section title="General">
				<side-menu icon="fa fa-home" label="Cliente">
					<menu-item to="/cliente-administrar/" label="Mantenimiento de Clientes"/>
					<menu-item to="/cliente-agregar/"     label="Alta de Cliente"          />
					<menu-item to="/cliente-eliminar/"    label="Eliminar Cliente"         />
					<menu-item to="/cliente-editar/"      label="Editar Cliente"           />
					<menu-item to="/cliente-wizard/"      label="Cliente Wizard"           />
				</side-menu>
				<side-menu icon="fa fa-group" label="Clientes">
				  <menu-item to="/clientes-admin/"      label="Administrar Cliente"/>
				  <menu-item to="/clientes-agregar/"    label="Agregar Cliente"/>
				</side-menu>
				<side-menu icon="fa fa-cubes" label="Pedidos">
				  <menu-item to="/pedido-admin/"      label="Administrar Pedido"/>
				  <menu-item to="/pedido-agregar/"    label="Agregar Pedido"/>
				</side-menu>
				<side-menu icon="fa fa-sign-in" label="Login">
				  <menu-item to="/login/"      label="Login Form"/>
				</side-menu>
			</menu-section>
		</sidebar-menu>
	</sidebar>
  <topbar></topbar>
</app>
