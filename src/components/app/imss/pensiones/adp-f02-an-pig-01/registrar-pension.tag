<registrar-pension>
  <page title="Solictar Pensión" id="registrar-pension">
    <panel label="Pensión">
      <form-wizard id="registrar-pension-flujo" title="Proyección de Pensión" nextbutton="Siguiente" prevbutton="Anterior" donebutton="Finalizar" return="/pedido-admin/">
        <step-wizard id="registrar-pension-paso01" title="NSS">
          <registrar-pension-paso01 />
        </step-wizard>
        <step-wizard id="registrar-pension-paso02" title="Casos especiales">
          <registrar-pension-paso02 />
        </step-wizard>
        <step-wizard id="registrar-pension-paso03" title="Elegir Pensión">
          <registrar-pension-paso03 />
        </step-wizard>
        <step-wizard id="registrar-pension-paso04" title="Datos Asegurado">
          <registrar-pension-paso04 />
        </step-wizard>
        <step-wizard id="registrar-pension-paso05" title="Domicilio">
          <registrar-pension-paso05 />
        </step-wizard>
        <step-wizard id="registrar-pension-paso06" title="Confirmar Datos">
          <registrar-pension-paso06 />
        </step-wizard>
        <step-wizard id="registrar-pension-paso07" title="Datos de Contacto">
          <registrar-pension-paso07 />
        </step-wizard>
        <step-wizard id="registrar-pension-paso08" title="Conocer Montos">
          <registrar-pension-paso08 />
        </step-wizard>
      </form-wizard>
    </panel>
  </page>
</registrar-pension>
