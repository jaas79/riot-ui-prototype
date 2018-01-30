<inputbox>
  <div class="form-group">
      <label for="direccion"> { opts.label } </label>
      <input type="text" id={opts.id} class="form-control" name={opts.id} placeholder={opts.placeholder} value={opts.value} />
      <div if={opts.required=='true'}>
         <label>Campo requerido.</label>
      </div>
  </div>
</inputbox>

