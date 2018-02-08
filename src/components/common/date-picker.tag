<date-picker>

	<label>{ opts.label }</label>
	<div class="input-group date" id={ opts.id } onmouseover={ setDatePicker }>
		<span class="input-group-addon">
			<span class="fa fa-calendar-o"></span>
		</span>
		<input type="text" placeholder={opts.placeholder} class="form-control" id={ opts.id } />
	</div>
		
	<script>
		this.setDatePicker = function(){
			var idDatePicker = "#" +  opts.id
			showPicker(idDatePicker);
		}
	</script>
</date-picker>