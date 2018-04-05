<modal-box>
    <div id={ "modal-" + opts.id } class="modal fade {opts.id}" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">{opts.title}</h4>

                <div class="title_right">
                 <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                   <div class="input-group">
                    <input type="text" class="form-control" placeholder="Criterio de búsqueda...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Buscar</button>
                    </span>
                   </div>
                 </div>
                </div>

                </div>
                <div class="modal-body">
                    <table-results id={opts.data} action={opts.action} pagination={opts.pagination}/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-link" data-dismiss="modal"><i class="fa fa-arrow-left"></i> Regresar</button>
                   <button type="button" class="btn btn-primary" data-dismiss="modal" onclick={ getDataTable }><i class="fa fa-check-circle-o"></i> Elegir</button>
                </div>
            </div>
        </div>
    </div>
	<script>
		this.getDataTable = function(e){
			var table = document.getElementById('modal-' + opts.id)
								.getElementsByTagName("tbody")[0];
								
			var totalCells = document.getElementById('modal-' + opts.id)
								     .getElementsByTagName('tbody')[0].rows[0].cells.length;
									 
			var textBox = document.getElementById(opts.link)
			                      .getElementsByTagName('input')[0];
									 
			var dataToTextBox = [];
			
			for (var r = 0; r < table.rows.length; r++){
				
				var dataRow = [];
				
				if ( table.rows[r].cells[0].getElementsByTagName('input')[0].checked ){
					for (var c = 1; c < totalCells; c++){
						var value = table.rows[r].cells[c].innerHTML.trim().toLowerCase();
						if ( value && ! value.includes("button") ){
							dataRow.push(table.rows[r].cells[c].innerHTML.trim());
						}					
					}
					dataToTextBox.push(dataRow.join(', '));
				}
			}
			textBox.value = dataToTextBox.join('; ') + ';';
		}
	</script>
</modal-box>

<search-box>
	<div class="input-group">
	  <input type="text" class="form-control" placeholder={opts.placeholder}>
	  <span class="input-group-btn">
		  <button type="button" class="btn btn-default" data-toggle="modal" data-target=".{opts.link}" onclick={ getTableData }>
		   <i class="fa fa-search"></i>
		  </button>
	  </span>
	</div>
</search-box>
