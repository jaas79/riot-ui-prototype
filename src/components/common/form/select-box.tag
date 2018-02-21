<select-box>
	<label if={ opts.required == 'true'} >{ opts.placeholder}<font color="red">*</font></label>
    <label if={ opts.required == 'false' || ( ! opts.required && opts.placeholder ) } >{ opts.placeholder }</label>

	<div id={ opts.id }>
		<yield/>
	</div>
	<br/>
	
</select-box>