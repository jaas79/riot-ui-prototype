<inputbox>
  <div class="form-group">
      <label for={opts.type}>{ opts.label }</label>
      <input type={opts.type} id={opts.id} class="form-control" name={opts.id} placeholder={opts.placeholder} value={opts.value} data-parsley-trigger="change" data-parsley-minlength={opts.minsize} data-parsley-maxlength={opts.maxsize}/>
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
			var x = document.getElementsByTagName('input')[opts.id];
			
			if(x.value.includes("$")){
				var y = x.value.split("$ ")[1];
			} else {
				var y = x.value;
			}
			
			if(! y.match(/^-?\d*(\.\d+)?$/)){
				x.style.borderColor = "#E85445";
				x.style.backgroundColor = "#FAEDEC";
				console.log("Invalid value");
			} else {
				console.log(y);
				y = Number(y).toFixed(opts.precision)
				x.style.borderColor = "";
				x.style.backgroundColor = "";
				
				if(opts.type == 'currency'){
					x.value = "$ " + y;
				} else {
					x.value = y;
				}
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

