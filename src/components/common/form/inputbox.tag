<inputbox>

	<label if={ opts.required }   for={opts.type}>{ opts.label}<font color="red">*</font></label>
    <label if={ ! opts.required } for={opts.type}>{ opts.label}</label>
	<div class={ iBoxDiv() } id={opts.id}0>
		<span class= { iboxClass() }>
			<i class={ iboxIcon() }></i>
		</span>
		<input type={opts.type} name={opts.id}3 class="form-control" name={opts.id}1 placeholder={opts.placeholder} value={opts.value} >
	</div>
	<span id={opts.id}2 class="help-block"></span>

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
	
		var msg = JSON.parse(localStorage.getItem("messages"));
		
		function setAttributes(elem, attribs) {
			for(var key in attribs) {
				if(attribs[key]){
					elem.setAttribute(key, attribs[key]);
				}
			}
		}
		
		function checkFloatNumber(){
			var myInputText = document.getElementsByTagName('input')[opts.id+'3'];
			var mySpan = document.getElementsByTagName('span')[opts.id+'2'];
			
			if ( myInputText.value && ( opts.type.toLowerCase() == 'currency' || opts.type.toLowerCase() == 'float' ) ){
				if(myInputText.value.includes("$")){
					var myValue = myInputText.value.split("$ ")[1];
				} else {
					var myValue = myInputText.value;
				}

				if(! myValue.match(/^-?\d*(\.\d+)?$/)){
					mySpan.textContent = "Valor incorrecto";
				} else {
					mySpan.textContent = "";

					myValue = Number(myValue).toFixed(opts.precision)

					if(opts.type == 'currency'){
						myInputText.value = "$ " + myValue;
					} else {
						myInputText.value = myValue;
					}
				}
			} else {
				checkEmptyValue();
			}
		}
		
		function checkEmptyValue(){
			var myInputText = document.getElementsByTagName('input')[opts.id+'3'];
			var mySpan = document.getElementsByTagName('span')[opts.id +'2'];
			
			if ( ! myInputText.value && opts.required.toLowerCase() == 'true' ) {
				mySpan.textContent = "Campo requerido";
			} else {
				mySpan.textContent = "";
			}
		}
		
		function checkLength(){
			var myInputText = document.getElementsByTagName('input')[opts.id+'3'];
			var mySpan = document.getElementsByTagName('span')[opts.id +'2'];
			
			if ( myInputText.value.length < opts.minsize && opts.minsize  ){
				mySpan.textContent = msg.messages[0].message.replace("&1", opts.minsize);
			} else if ( myInputText.value.length > opts.maxsize && opts.maxsize ) {
				mySpan.textContent = msg.messages[1].message.replace("&1", opts.maxsize);
			} else {
				checkEmptyValue();
			}
		}
		
		function checkMinMaxValue(){
			var myInputText = document.getElementsByTagName('input')[opts.id+'3'];
			var mySpan = document.getElementsByTagName('span')[opts.id +'2'];
			var myValue = myInputText.value;
			
			if(myValue.includes("$")){
				myValue = myValue.split("$ ")[1];
			}
			
			myValue = Number(myValue);
			
			if ( myValue < opts.min && opts.min ){
				mySpan.textContent = msg.messages[2].message.replace("&1", opts.min);
			} else if ( myValue > opts.max && opts.max ) {
				mySpan.textContent = msg.messages[3].message.replace("&1", opts.max);
			} else {
				checkEmptyValue();
				checkFloatNumber();
			}
		}
		
		var iBoxComponent = document.getElementsByTagName('input')[opts.id+'3'];
		
		if(opts.required && opts.required.toLowerCase() == 'true'){
			iBoxComponent.addEventListener("focus", checkEmptyValue, true);
			iBoxComponent.addEventListener("change", checkEmptyValue, true);
		}
		
		if ( opts.disabled && opts.disabled.toLowerCase() == 'true' ){
			iBoxComponent.setAttribute("disabled", "disabled");
		}
		
		if ( opts.type && (opts.type.toLowerCase() == 'currency' || opts.type.toLowerCase() == 'float') ){
			iBoxComponent.addEventListener("focus", checkFloatNumber, true);
			iBoxComponent.addEventListener("change", checkFloatNumber, true);
		}
		
		if ( opts.minsize || opts.maxsize ) {
			iBoxComponent.addEventListener("focus", checkLength, true);
			iBoxComponent.addEventListener("change", checkLength, true);
		}
		
		if ( opts.type && (opts.type.toLowerCase() == 'currency' || opts.type.toLowerCase() == 'float') && ( opts.max || opts.min ) ){
			iBoxComponent.addEventListener("focus", checkMinMaxValue, true);
			iBoxComponent.addEventListener("change", checkMinMaxValue, true);
		}
		
		if ( opts.type && opts.type.toLowerCase() == 'textarea' ){
			var tAreaElement = document.createElement('textarea');
			tAreaElement.innerHTML = iBoxComponent.innerHTML;
			iBoxComponent.parentNode.replaceChild(tAreaElement, iBoxComponent);
			
			setAttributes(tAreaElement, {
				"id": opts.id+'3',
				"name": opts.id+'1',
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

