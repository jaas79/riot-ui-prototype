
<app>
	<sidebar title="Prototipo IU" icon="fa fa-diamond">
		<sidebar-profile
			picture="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
			name="Juan Pérez González" role="Afiliado"/>
		<sidebar-menu>
			<menu-section title="General">
				<side-menu icon="fa fa-home" label="Clientes">
					<menu-item to="clienteAdministrar" label="Mantenimiento de Clientes"/>
					<menu-item to="clienteAgregar"     label="Agregar Cliente"          />
					<menu-item to="clienteEditar"      label="Editar Cliente"           />
					<menu-item to="clienteEliminar"    label="Eliminar Cliente"         />
				</side-menu>
			</menu-section>
		</sidebar-menu>
	</sidebar>
  <topbar></topbar>
	<content>
		<clienteAdministrar/>
		<clienteEliminar   />
		<clienteAgregar    />
		<clienteEditar     />
	</content>
	<footerbar copyright="Softtek" link="http://www.softtek.com"></footerbar>
</app>
