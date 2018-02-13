<pedido-agregar-paso-1>
  <panel label="Paso 1. Datos del Cliente">
    <inputbox id="numero-pedido" type="text" label="Número" value="" placeholder="Número del Cliente" required=true disabled=false minsize=3 maxsize=100 />
    <inputbox id="nombre-pedido2" type="text" label="Nombre" value="" placeholder="Nombre del Cliente" required=true disabled=false minsize=3 maxsize=100 />
	<attach-photo id="foto-pedido" label="Ticket pedido" placeholder="Seleccione una imagen..." image="../img/foto.jpg" height:200 width:100 max-size-mb="10" file-types="jpg, png, bmp" />
    <select-box id="tipo-cliente" type="option" placeholder="Selecciona el Tipo de Cliente">
      <option-box id="fisica" label="Persona Física"/>
      <option-box id="moral" label="Persona Moral" />
    </select-box>
    <date-picker id="entregar2" type="date" label="Fecha de Entrega" value="2018-01-15" placeholder="Ingresar fecha de entrega" required=true disabled=false format="YYYY/MM/DD" mindate="2018-01-05" maxdate="2018-01-20" />
  </panel>
</pedido-agregar-paso-1>
