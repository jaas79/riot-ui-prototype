<pedido-agregar>
  <page title="Agregar Pedido" id="pedido-agregar">
    <panel label="Pedido">
      <form-wizard id="pedido-wizard" title="Pasos para agregar Pedido" nextbutton="Siguiente" prevbutton="Anterior" donebutton="Finalizar" return="pedido-admin">
        <step-wizard id="pedido-wizard-paso1" title="Cliente">
          <pedido-agregar-paso-1 />
        </step-wizard>
        <step-wizard id="pedido-wizard-paso2" title="Productos" >
          <pedido-agregar-paso-2 />
        </step-wizard>
        <step-wizard id="pedido-wizard-paso3" title="Pago">
          <pedido-agregar-paso-3 />
        </step-wizard>
      </form-wizard>
    </panel>
  </page>
</pedido-agregar>
