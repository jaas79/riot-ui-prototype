<registrar-pension-paso09>
  <panel label="Paso 9. Registra o actualiza tu Cuenta Bancaria">
    <p>Para realizar el depósito de tu pensión, el IMSS necesita conocer la cuenta bancaria en la que deseas recibir el pado mensual.</p>
    <p>Es indispensable que la cuenta bancaria esté a tu nombre.</p>
    <panel label="Titular de Pago">
      <row>
        <column size="col-md-4 col-xs-12">
          <outputtext id="nombre" label="Nombre(s)" value="Héctor Javier" />
          <outputtext id="genero" label="Género" value="Masculino" />
          <outputtext id="rfc" label="RFC" value="GAVH541009PX6" />
        </column>
        <column size="col-md-4 col-xs-12">
          <outputtext id="apellido-paterno" label="Primer Apellido" value="Vidal" />
          <outputtext id="fecha-nacimiento" label="Fecha de Nacimiento" value="09/11/1954" />
        </column>
        <column size="col-md-4 col-xs-12">
          <outputtext id="apellido-materno" label="Segundo Apellido" value="Garcia" />
          <outputtext id="curp" label="CURP" value="GAVH541009HDFRDC05" />
        </column>
      </row>
    </panel>
    <panel label="Cuenta Bancaria">
      <p>El IMSS tiene registrada la siguiente información, confirma o en su caso actualiza los datos de la cuenta bancaria.</p>
      <select-box id="banco" type="select" placeholder="Banco" required=true>
        <option-box id="bmx" label="Banamex"/>
        <option-box id="bcr" label="Bancomer" />
        <option-box id="san" label="Santander" />
      </select-box>
      <inputbox type="text" id="clabe"  label="CLABE" value="" required=true />
      <inputbox type="text" id="clabe2"  label="Confirmar CLABE" value="" required=true />
    </panel>
  </panel>
</registrar-pension-paso09>
