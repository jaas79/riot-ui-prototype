<reservaciones-04>
 <panel label="Datos de Pago">
     <row>
      <column size="col-md-4 col-xs-12">
	   <inputbox type="text" id="nombre"        label="Nombre"                value="Susana"  required=true />
	   <inputbox type="text" id="apellidop"     label="Apellido Pterno"       value="Hernández"  required=true />
	   <inputbox type="text" id="apellidom"     label="Apellidos Materno"     value="Galván"  required=true />
	   <inputbox type="text" id="tarjeta"       label="Número de Tarjeta"      value="856790034"  required=true />
	   <inputbox type="text" id="vigencia"      label="Vigencia"              value="Enero 27 2019"  required=true />
       <outputtext type="text" id="codigo"      label="Codigo"                value="******"  />
       <outputtext type="numeric" id="monto"       label="Monto"              value="8126.0"  />
      </column size="col-md-4 col-xs-12">
      <column size="col-md-4 col-xs-12">
          <outputtext id="reserva" label="Precio del boleto de salida" value="3000.00"/>
          <outputtext id="reserva" label="Precio del boleto de regreso" value="3100.00"/>
          <outputtext id="reserva" label="Tarifa base original" value="195.0"/>
          <outputtext id="reserva" label="Tarifa descontada" value="-"/>
          <outputtext id="reserva" label="Ajuste" value=""/>
          <outputtext id="reserva" label="Iva" value="1218.00"/>
          <outputtext id="reserva" label="Impuestos" value="612.00"/>
          </hr>
          <outputtext id="reserva" label="Total" value="8126.0"/>
      </column size="col-md-4 col-xs-12">
     </row>
 </panel>
</reservaciones-04>

<reservaciones-fin>
<page>
 <panel label="Operación Finalizada">
   <row>
      <column size="col-md-4 col-xs-12">
        <outputtext id="reserva" label="Operación realizada con éxito." value=""/>
      </column size="col-md-4 col-xs-12">
      <submit-button to="/reservaciones-wizard/" action="return"> </submit-button>
   </row>
 </panel>
 </page>
</reservaciones-fin>
