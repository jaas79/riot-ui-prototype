<registrar-pension-paso05>
  <panel label="Paso 5. Domicilio">
    <row>
      <column size="col-md-6 col-xs-12">
        <inputbox type="text" id="codigo-postal"  label="Código Postal" value="50903" disabled=true />
        <inputbox type="text" id="estado"  label="Estado" value="México" disabled=true />
        <inputbox type="text" id="municipio"  label="Municipio o Alcaldía" value="Almoloya de Juárez" disabled=true />
      </column>
      <column size="col-md-6 col-xs-12">
        <select-box id="colonia" type="select" placeholder="Selecciona tu colonia" required=true>
          <option-box id="c01" label="Barrio San Pedro Zona Norte"/>
          <option-box id="c02" label="Otras colonias" />
        </select-box>
        <inputbox type="text" id="calle"  label="Calle" value="San Cristobal" required=true />
        <inputbox type="text" id="num-ext"  label="Número exterior" value="33" required=true />
        <inputbox type="text" id="num-int"  label="Número interior" value="" required=false />
      </column>
    </row>
  </panel>
</registrar-pension-paso05>
