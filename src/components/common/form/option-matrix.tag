<option-matrix>
	<span class="section">{ opts.title }</span>
	
	<yield/>
	
	<table id={ "matrix-" + opts.id } class="table table-striped table-bordered bulk_action">
		<thead>
		</thead>
		<tbody>
		</tbody>
	<table>
	<script>
		this.on('mount', function(){
			var tMatrix = document.getElementById("matrix-" + opts.id)
			var tMatrixHead = document.getElementById("matrix-" + opts.id).getElementsByTagName('thead')[0]
			var tMatrixBody = document.getElementById("matrix-" + opts.id).getElementsByTagName('tbody')[0]
			
			//Columns
			var c = document.getElementById(opts.id).children[1].children
			var cGroupTagName = document.getElementById(opts.id).children[1].tagName.toLowerCase()
			//Groups
			var g = document.getElementById(opts.id).children[2].children
			
			if (cGroupTagName == 'matrix-columns'){
				if (c.length > 0){
					//Insert row for matrix headers
					var headers = tMatrixHead.insertRow(0);
					
					var columns = [];
					
					var thTitle = document.createElement('th');
					thTitle.innerHTML = opts.title
					columns[0] = headers.appendChild(thTitle)
					
					//Table Headers
					for (var i = 0; i < c.length; i++){
						var thHeader = document.createElement('th');
						thHeader.innerHTML = c[i].title
						thHeader.id = c[i].id
						columns[i + 1] = headers.appendChild(thHeader)
					}
				} else {
					console.log("No 'matrix-column' founded")
				}
			} else {
				console.log("Missing 'matrix-columns' tag")
			}
			
			var totalRows = 0;
			
			for (var i = 0; i < g.length; i++){
				
				var groups = [];
				var row_titles = [];
				var optionCells = [];
				
				//Table without groups
				if (g[i].tagName.toLowerCase() == 'matrix-row'){
					
					console.log(totalRows)
					row_titles[totalRows] = tMatrixBody.insertRow(totalRows)
					var cell_title = row_titles[totalRows].insertCell(0);
					cell_title.id = g[i].id
					cell_title.innerHTML = g[i].title
					
					for (var j = 0; j < c.length; j++){
						optionCells[j] = row_titles[totalRows].insertCell(j + 1)
						if (this.opts.type && this.opts.type.toLowerCase() == 'multi'){
							optionCells[j].innerHTML = "<input type='checkbox' class='flat' name='ts-ckeck'>"
						}
					}
				//Table with groups
				} else if (g[i].tagName.toLowerCase() == 'matrix-group') {
					var thGroup = document.createElement('th')
					var colGroup = tMatrixBody.insertRow(totalRows)
					
					thGroup.setAttribute("colspan", c.length + 1)
					thGroup.scope = "colgroup"
					thGroup.id = g[i].id
					thGroup.innerHTML = g[i].title
					groups[i] = colGroup.appendChild(thGroup)
					
					if (g[i].children.length > 0){
						//Matrix rows cycle
						for (var j = 0; j < g[i].children.length; j++){
							row_titles[totalRows + j] = tMatrixBody.insertRow(totalRows + j + 1)
							var cell_title = row_titles[totalRows + j].insertCell(0);
							cell_title.id = g[i].children[j].id
							cell_title.innerHTML = g[i].children[j].title
							
							//Insert checkbox
							for (var k = 0; k < c.length; k++){
								optionCells[k] = row_titles[totalRows + j].insertCell(k + 1)
								if (this.opts.type && this.opts.type.toLowerCase() == 'multi'){
									optionCells[k].innerHTML = "<input type='checkbox' class='flat' name='ts-ckeck'>"
								}
							}
						}
					}
					
				} else {
					continue
				}
				
				totalRows = tMatrixBody.getElementsByTagName("tr").length
			}
		});
		
	</script>
</option-matrix>