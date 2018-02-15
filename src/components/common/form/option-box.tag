<option-box>
	<div class="radio" if={ this.parent.opts.type == 'option' }>
		<label>
			<input id={ opts.id } type="radio" class="flat" name="iCheck"> { opts.label }
		</label>
	</div>
	
	<div class="checkbox" if={ this.parent.opts.type == 'check' }>
		<label>
			<input id={ opts.id } type="checkbox" class="flat"> { opts.label }
		</label>
	</div>
	
	<option id={opts.id} if={ this.parent.opts.type == 'select' }>{ opts.label }</option>
	
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
					plcholder.selected = "selected";
					
					s.id = this.parent.opts.id;
					s.setAttribute("class", "form-control");
					s.add(plcholder);
					d.appendChild(s)
				}
				console.log(s);
				var o = document.getElementsByTagName('option')[opts.id];
					
				s.add(o);
				
			}
		});
	</script>
	
</option-box>