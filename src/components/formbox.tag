<formbox>
  <div class="x_content">
      <div class="x_title">
         <h2>{opts.title}</h2>
      </div>
      <br>
      <form id={opts.id}>
        <yield/>
      </form>
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
</formbox>
