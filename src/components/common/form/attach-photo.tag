<attach-photo>
	<!-- File input field -->
	
	<label>{ opts.label }</label>
	
	<div class="input-group" id={ opts.id }>
		<span class="input-group-btn">
			<span class="btn btn-default btn-file">
				<i class="fa fa-file-image-o"></i> Buscar... <input type="file" id={ opts.id }/>
			</span>
		</span>
		<input type="text" id={ "url-input-" + opts.id } class="form-control" readonly>
	</div>
	<span id={ "error-msg-" + opts.id } class="help-block"></span>

	<div class="form-group" id={ "image-preview-" + opts.id }></div>
	
	<script>
		this.on('mount', function(){
		
			function fileValidation(){
				var fileInput = document.getElementsByTagName('input')[opts.id];
				var filePath = fileInput.value;
				var urlInput = document.getElementById("url-input-" + opts.id);
				var previewImageDiv = document.getElementById("image-preview-" + opts.id);
				var errorMsg = document.getElementById("error-msg-" + opts.id);
				
				var allowedExtensions = opts.filetypes.split(",").map(Function.prototype.call, String.prototype.trim);
				
				for(var i=0; i < allowedExtensions.length; i++){
					allowedExtensions[i] = "." + allowedExtensions[i];
				}
				
				allowedExtensions = "(" + allowedExtensions.join("|").replace(/\./g, "\\.") + ")$";
				allowedExtensions = new RegExp(allowedExtensions);
				
				if( ! allowedExtensions.exec(filePath) ){
					errorMsg.textContent = 'No se pudo subir el archivo. Extensiones validas: ' + opts.filetypes + '.';
					urlInput.value = '';
					previewImageDiv.innerHTML = '';
					return false;
				} else {
					//Image preview
					if (fileInput.files && fileInput.files[0]) {
						
						var mbSize = fileInput.files[0].size / 1048576;
						mbSize = mbSize.toFixed(2);
						
						if ( mbSize > Number(opts.maxsizemb) ){
							errorMsg.textContent = 'Tamaño máximo del archivo: ' +  opts.maxsizemb + ' MB.';
							urlInput.value = '';
							previewImageDiv.innerHTML = '';
							return false;
						} else {
							errorMsg.textContent = '';
							urlInput.value = filePath.split('\\')[filePath.split('\\').length - 1];
							var reader = new FileReader();
							reader.onload = function(e) {
								previewImageDiv.innerHTML = '<img src="' + e.target.result + '" height="' + opts.height + '" width="' + opts.width + '"/>';
							};
							reader.readAsDataURL(fileInput.files[0]);
						}
					}
				}
			}
			
			var inputImage = document.getElementById(opts.id);
			
			inputImage.addEventListener("change", fileValidation, true);
		})
	</script>
</attach-photo>