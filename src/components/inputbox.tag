<inputbox>
  <div class="form-group">
      <label for={opts.type}>{ opts.label }</label>
      <input type={MapType} id={opts.id} class="form-control" name={opts.id} placeholder={opts.placeholder} value={opts.value} data-parsley-trigger="change" required/>
      <div if={opts.required=='true'}>
         <label>Campo requerido.</label>
      </div>
  </div>
  
  <script>
	if(opts.type == 'text'){
		this.MapType = 'alphanum'
	} else {
		this.MapType = opts.type
	}
		
  </script>
</inputbox>

