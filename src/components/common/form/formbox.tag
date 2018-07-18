<formbox>
  <div class="x_content">
    <h2 class="page-header">{opts.title}</h2>
    <form id={opts.id} data-parsley-validate>
      <yield/>
      <br/>
      <div class="form-group">
        <div if={opts.action=='create'}>
          <div class="ln_solid"></div>
          <submit-button to={ opts.return } action="create"></submit-button>
          <submit-button to={ opts.return } action="return"></submit-button>
        </div>
        <div if={opts.action=='update'}>
          <div class="ln_solid"></div>
          <submit-button to={ opts.return } action="update"></submit-button>
          <submit-button to={ opts.return } action="return"></submit-button>
        </div>
        <div if={opts.action=='delete'}>
          <div class="ln_solid"></div>
          <submit-button to={ opts.return } action="delete"></submit-button>
          <submit-button to={ opts.return } action="return"></submit-button>
        </div>
		<div if={opts.action=='search'}>
          <submit-button to={ opts.return } action="search"></submit-button>
        </div>
		<div if={opts.action=='custom'}>
          <div class="ln_solid"></div>
          <submit-button to={ opts.return } action="custom" icon={ opts.icon } caption={ opts.button } ></submit-button>
		  <submit-button to={ opts.return } action="return"></submit-button>
        </div>
      </div>
    </form>
  </div>
  
  <script>
	this.on('mount', function(){
		
		var inputboxes = document.getElementsByTagName("formbox")[opts.id].getElementsByTagName("inputbox")
		var selectboxes = document.getElementsByTagName("formbox")[opts.id].getElementsByTagName("select-box")
		var submitButton = this.tags["submit-button"][0].root.childNodes[0]
		
		
		function checkForm(){
			
			var disableFlag = true
			
			// Inputbox validation
			if (inputboxes.length > 0){
				for(var i, i=0; i < inputboxes.length; i++){
					if(inputboxes[i].attributes["required"] && inputboxes[i].attributes["required"].value == 'true'){
						if (inputboxes[i].getElementsByTagName("input")[0] && ! inputboxes[i].getElementsByTagName("input")[0].value){
							disableFlag = false
						} else {
							continue
						}
					}
				}
			}
			
			// Select-box validation
			if (selectboxes.length > 0){
				for(var i, i=0; i < selectboxes.length; i++){
					if(selectboxes[i].attributes["required"] && selectboxes[i].attributes["required"].value == 'true'){
						var type = selectboxes[i].attributes["type"].value
						
						switch(type){
							case 'select':
								if(Boolean(selectboxes[i].getElementsByTagName("select")[0].getElementsByTagName("option")[0].selected)){
									disableFlag = false
								} else {
									continue
								}
							case 'check':
								continue
							case 'option':
								continue
							default:
								continue
						}
					}
				}
			}
			
			console.log(disableFlag)
			
			if(!disableFlag){
				submitButton.setAttribute("disabled", "")
			} else {
				submitButton.removeAttribute("disabled")
			}
		}
		
		setTimeout( function (){
				// Set "checkForm" method within Inputbox
				for(var i, i=0; i < inputboxes.length; i++){
					inputboxes[i].getElementsByTagName("input")[0].addEventListener("keyup", checkForm, true)
				}
				
				// Set "checkForm" method within Selectbox
				for(var i, i=0; i < selectboxes.length; i++){
					selectboxes[i].getElementsByTagName("select")[0].addEventListener("change", checkForm, true)
					}
			}, 3000)
		
		
		window.onload = checkForm
	})
  </script>
</formbox>
