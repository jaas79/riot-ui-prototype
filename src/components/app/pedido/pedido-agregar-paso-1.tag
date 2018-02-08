<pedido-agregar-paso-1>
  <panel label="Paso 1. Datos del Cliente">
    <inputbox id="numero" type="text" label="Número" value="" placeholder="Número del Cliente" required=true disabled=false minsize=3 maxsize=100 />
    <inputbox id="nombre" type="text" label="Nombre" value="" placeholder="Nombre del Cliente" required=true disabled=false minsize=3 maxsize=100 />
    <select-box id="tipo-cliente" type="option" placeholder="Selecciona el Tipo de Cliente">
      <option-box id="fisica" label="Persona Física"/>
      <option-box id="moral" label="Persona Moral" />
    </select-box>
    <date-picker id="entregar" type="date" label="Fecha de Entrega" value="2018-01-15" placeholder="Ingresar fecha de entrega" required=true disabled=false format="YYYY/MM/DD" min-date="2018-01-05" max-date="2018-01-20" />
  </panel>
</pedido-agregar-paso-1>
