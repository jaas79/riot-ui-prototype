<registrar-pension-paso07>
  <panel label="Paso 7. Datos de Contacto y encuesta">
    <panel label="Datos de Contacto">
      <p>Por favor ingresa un correo electrónico válido y al menos un teléfono.</p>
      <row>
        <column size="col-md-12 col-xs-12">
            <inputbox type="email" id="email"  label="Correo Electrónico" value="hectorvidal@mail.com" placeholder="Ingresa tu correo (p.ej. ejemplo@mail.com)" required=true disabled=false />
            <inputbox type="text" id="tel-fijo" label="Teléfono fijo" value="" placeholder="Ingresa 10 dígitos de tu teléfono" required=false disabled=false minsize=10 maxsize=10/>
            <inputbox type="text" id="tel-celular" label="Teléfono celular" value="" placeholder="Ingresa 10 dígitos de tu celular" required=true disabled=false minsize=10 maxsize=10/>
        </column>
      </row>
    </panel>
    <panel label="Encuesta">
      <row>
        <column size="col-md-4 col-xs-12">
          <select-box id="mexicano" type="option" placeholder="¿Eres de nacionalidad mexicana?" required=true>
    				<option-box id="mexicano-si" label="Si"/>
    				<option-box id="mexicano-no" label="No" />
    			</select-box>
          <select-box id="lengua-indigena" type="option" placeholder="¿Hablas alguna lengua indígena?" required=true>
    				<option-box id="lengua-indigena-si" label="Si"/>
    				<option-box id="lengua-indigena-no" label="No" />
    			</select-box>
        </column>
        <column size="col-md-4 col-xs-12">
          <select-box id="extranjero" type="option" placeholder="¿Vives en el extranjero?" required=true>
            <option-box id="extranjero-si" label="Si"/>
            <option-box id="extranjero-no" label="No" />
          </select-box>
          <select-box id="comunidad-indigena" type="option" placeholder="¿Perteneces a alguna comunidad indígena?" required=true>
            <option-box id="comunidad-indigena-indigena-si" label="Si"/>
            <option-box id="comunidad-indigena-indigena-no" label="No" />
          </select-box>
        </column>
      </row>
    </panel>
  </panel>
</registrar-pension-paso07>
