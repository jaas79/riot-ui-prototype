<date-picker>

	<label>{ opts.label }</label>
	<fieldset>
		<div class="col-md-11 xdisplay_inputx form-group has-feedback" id={ opts.id } onmouseover={ setDatePicker }>
			<input type="text" placeholder={opts.placeholder}  class="form-control has-feedback-left"/>
			<span class="fa fa-calendar-o form-control-feedback left">
				<span></span>
			</span>
		</div>
	</fieldset>
		
	<script>
		this.setDatePicker = function(){
			var dpId = "#" +  opts.id;
			var dpDateFormat = opts.format.toLowerCase();
			showPicker(dpId, dpDateFormat, opts.mindate, opts.maxdate);
		}

		function showPicker(id, dateFormat, minDate, maxDate){
	     $(id).datepicker({
		  format: dateFormat,
		  startDate: minDate,
		  endDate: maxDate
	     });
	
	     $(id).on('changeDate', function(ev){
		  $(this).datepicker('hide');
	     });
        }
	</script>
</date-picker>