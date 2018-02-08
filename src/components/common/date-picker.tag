<date-picker>

	<label>{ opts.label }</label>
	<fieldset>
		<div class="col-md-11 xdisplay_inputx form-group has-feedback" id={ opts.id } onmouseover={ setDatePicker }>
			<input type="text" placeholder={opts.placeholder} class="form-control has-feedback-left" id={ opts.id } />
			<span class="fa fa-calendar-o form-control-feedback left">
				<span></span>
			</span>
		</div>
	</fieldset>
		
	<script>
		this.setDatePicker = function(){
			var idDatePicker = "#" +  opts.id
			showPicker(idDatePicker);
		}
	</script>
</date-picker>