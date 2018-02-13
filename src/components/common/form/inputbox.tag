<inputbox>

	<label if={ opts.required }   for={opts.type}>{ opts.label}<font color="red">*</font></label>
    <label if={ ! opts.required } for={opts.type}>{ opts.label}</label>
	<div class={ iBoxDiv() } id={opts.id}>
		<span class= { iboxClass() }>
			<i class={ iboxIcon() }></i>
		</span>
		<input type={opts.type} id={opts.id} class="form-control" name={opts.id} placeholder={opts.placeholder} value={opts.value} >
	</div>
	<span id={opts.id} class="help-block"></span>

  <script>
  
	var inputboxes = [
		{ type: "email",    inputbox: { icon: "fa fa-envelope-o", class: "input-group-addon", div: "input-group" } },
		{ type: "currency", inputbox: { icon: "fa fa-usd",        class: "input-group-addon", div: "input-group" } },
		{ type: "password", inputbox: { icon: "fa fa-lock",       class: "input-group-addon", div: "input-group" } },
		{ type: "default",  inputbox: { icon: "",                 class: "",                  div: "form-group"  } }
	]
	
	this.iboxIcon = function(){
		switch (opts.type) {
			case 'email':
				return inputboxes[0].inputbox.icon;
				break;
			case 'currency':
				return inputboxes[1].inputbox.icon;
				break;
			case 'password':
				return inputboxes[2].inputbox.icon;
				break;
			default:
				return inputboxes[3].inputbox.icon;
				break;
		}
	}
	
	this.iboxClass = function() {
		switch (opts.type) {
			case 'email':
				return inputboxes[0].inputbox.class;
				break;
			case 'currency':
				return inputboxes[1].inputbox.class;
				break;
			case 'password':
				return inputboxes[2].inputbox.class;
				break;
			default:
				return inputboxes[3].inputbox.class;
				break;
		}
	}
	
	this.iBoxDiv = function() {
		switch (opts.type) {
			case 'email':
				return inputboxes[0].inputbox.div;
				break;
			case 'currency':
				return inputboxes[1].inputbox.div;
				break;
			case 'password':
				return inputboxes[2].inputbox.div;
				break;
			default:
				return inputboxes[3].inputbox.div;
				break;
		}
	}
	
	this.on('mount', function(){
		
		function setAttributes(elem, attribs) {
			for(var key in attribs) {
				if(attribs[key]){
					elem.setAttribute(key, attribs[key]);
				}
			}
		}
		
		function checkFloatNumber(){
			var myInputText = document.getElementsByTagName('input')[opts.id];
			var mySpan = document.getElementsByTagName('span')[opts.id];
			
			if ( myInputText.value ){
				if(myInputText.value.includes("$")){
					var y = myInputText.value.split("$ ")[1];
				} else {
					var y = myInputText.value;
				}

				if(! y.match(/^-?\d*(\.\d+)?$/)){
					mySpan.textContent = "Valor incorrecto";
				} else {
					mySpan.textContent = "";

					y = Number(y).toFixed(opts.precision)

					if(opts.type == 'currency'){
						myInputText.value = "$ " + y;
					} else {
						myInputText.value = y;
					}
				}
			} else {
				mySpan.textContent = "";
				checkEmptyValue();
			}
		}
		
		function checkEmptyValue(){
			var myInputText = document.getElementsByTagName('input')[opts.id];
			var mySpan = document.getElementsByTagName('span')[opts.id];
			
			if ( ! myInputText.value ) {
				mySpan.textContent = "Campo requerido";
			} else {
				mySpan.textContent = "";
			}
		}
		
		var iBoxComponent = document.getElementsByTagName('input')[opts.id];
		
		if(opts.required && opts.required.toLowerCase() == 'true'){
			iBoxComponent.addEventListener("focus", checkEmptyValue, true);
			iBoxComponent.addEventListener("change", checkEmptyValue, true);
		}
		
		if(opts.disabled && opts.disabled.toLowerCase() == 'true'){
			iBoxComponent.setAttribute("disabled", "disabled");
		}
		
		if(opts.type && (opts.type.toLowerCase() == 'currency' || opts.type.toLowerCase() == 'float')){
			iBoxComponent.addEventListener("focus", checkFloatNumber, true);
			iBoxComponent.addEventListener("change", checkFloatNumber, true);
		}
		
		if(opts.type && opts.type.toLowerCase() == 'textarea'){
			var tAreaElement = document.createElement('textarea');
			tAreaElement.innerHTML = iBoxComponent.innerHTML;
			iBoxComponent.parentNode.replaceChild(tAreaElement, iBoxComponent);
			
			setAttributes(tAreaElement, {
				"id": opts.id,
				"name": opts.id,
				"placeholder": opts.placeholder,
				"required": opts.required,
				"data-parsley-trigger": "change",
				"data-parsley-minlength": opts.minsize,
				"data-parsley-maxlength": opts.maxsize,
				"class": "form-control"
			});
			//This is because textarea does not have a value property as such
			//That is why it is called explicitly in order to set text in textarea
			tAreaElement.value = opts.value;
		}
		
		
	})
		
  </script>
</inputbox>

