<formbox>
  <div class="x_content">
    <h2 class="page-header">{opts.title}</h2>
    <form id={opts.id}>
      <yield/>
      <br/>
      <div class="ln_solid"></div>
      <div class="form-group">
        <div if={opts.action=='create'}>
          <submit-button to={ opts.return } caption="Guardar"></submit-button>
        </div>
        <div if={opts.action=='update'}>
          <submit-button to={ opts.return } caption="Guardar"></submit-button>
        </div>
        <div if={opts.action=='delete'}>
          <submit-button to={ opts.return } caption="Eliminar"></submit-button>
        </div>
      </div>
    </form>
  </div>
</formbox>
