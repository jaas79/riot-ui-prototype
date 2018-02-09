<inputbox>
  <div class="form-group" id={opts.id}>
      <label for={opts.type}>{ opts.label }</label>
      <input type={opts.type} id={opts.id} class="form-control" name={opts.id} placeholder={opts.placeholder} value={opts.value} data-parsley-trigger="change" data-parsley-minlength={opts.minsize} data-parsley-maxlength={opts.maxsize}/>
	  <span id={opts.id} class="help-block"></span>
      <div if={opts.required=='true'}>
         <label>Campo requerido.</label>
      </div>
  </div>
  
  <script>
	
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
			var myDiv = document.getElementsByTagName('div')[opts.id];
			var mySpan = document.getElementsByTagName('span')[opts.id];
			
			if ( myInputText.value ){
				if(myInputText.value.includes("$")){
					var y = myInputText.value.split("$ ")[1];
				} else {
					var y = myInputText.value;
				}

				if(! y.match(/^-?\d*(\.\d+)?$/)){
					myDiv.setAttribute("class", "form-group has-error");
					mySpan.textContent = "Valor incorrecto";
				} else {
					myDiv.setAttribute("class", "form-group");
					mySpan.textContent = "";

					y = Number(y).toFixed(opts.precision)

					if(opts.type == 'currency'){
						myInputText.value = "$ " + y;
					} else {
						myInputText.value = y;
					}
				}
			} else {
				myDiv.setAttribute("class", "form-group");
				mySpan.textContent = "";
			}
		}
		
		var iBoxComponent = document.getElementsByTagName('input')[opts.id];
		
		if(opts.required && opts.required.toLowerCase() == 'true'){
			iBoxComponent.setAttribute("required", "");
		}
		
		if(opts.disabled && opts.disabled.toLowerCase() == 'true'){
			iBoxComponent.setAttribute("disabled", "disabled");
			console.log(iBoxComponent)
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

