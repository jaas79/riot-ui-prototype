<option-box id={ opts.id }>
	<div class="radio" if={ this.parent.opts.type == 'option' }>
		<label>
			<input type="radio" class="flat" name="iCheck"> { opts.label }
		</label>
	</div>
	
	<div class="checkbox" if={ this.parent.opts.type == 'check' }>
		<label>
			<input type="checkbox" class="flat"> { opts.label }
		</label>
	</div>
	
</option-box>