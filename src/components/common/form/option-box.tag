<option-box>
	<div class="radio" if={ this.parent.opts.type == 'option' }>
		<label>
			<input id={ "opt-" + opts.id } type="radio" class="flat" name="iCheck"> { opts.label }
		</label>
	</div>
	
	<div class="checkbox" if={ this.parent.opts.type == 'check' }>
		<label>
			<input id={ "opt-" + opts.id } type="checkbox" class="flat"> { opts.label }
		</label>
	</div>
	
	<option id={ "opt-" + opts.id } if={ this.parent.opts.type == 'select' }>{ opts.label }</option>
	
	<script>
		this.on('mount', function(){
			if ( this.parent.opts.id && this.parent.opts.type == 'select' ) {
				var s = null;
				var d = document.getElementsByTagName('div')[this.parent.opts.id];
				if (document.getElementsByTagName('select')[this.parent.opts.id]) {
					s = document.getElementsByTagName('select')[this.parent.opts.id];
				} else {
					s = document.createElement('select');
					var plcholder = document.createElement('option');
					
					plcholder.text = "Seleccione una opción...";
					plcholder.disabled = "disabled";
					
					if ( opts.selected == 'false' || ! opts.selected ){
						plcholder.selected = "selected";
					}
					
					s.id = this.parent.opts.id;
					s.setAttribute("class", "form-control");
					s.add(plcholder);
					d.appendChild(s)
				}
				var o = document.getElementById("opt-" + opts.id);
					
				s.add(o);
			}
			
			var opt = document.getElementById("opt-" + opts.id);
			
			if ( opts.selected == 'true' ) {
				if ( this.parent.opts.type == 'option' || this.parent.opts.type == 'check' ){
					opt.checked = "checked";
				} else {
					opt.selected = "selected";
				}
			}
		});
	</script>
	
</option-box>