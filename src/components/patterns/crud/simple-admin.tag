<simple-admin>
 <table class="table table-striped" id={opts.id}>
       <thead>
         <tr>
           <th each={header, index in headers}> 
             <inputbox placeholder={header.label} id={this.opts.id+index}> </inputbox> 
           </th>
           <th> 
              <a href="/cliente-administrar/" onclick={addRow} class="btn btn-primary btn-sm">
                <i class="fa fa-plus"></i>
              </a>
           </th>
         </tr>
         <tr>
           <th each={headers}> {label} </th>
         </tr>
       </thead>
       <tbody>
       <tr each={row, index in rows}> 
           <td each={d , i in row.data }>
             {d}
           </td>
           <td>
               <a href="/cliente-administrar/" onclick={removeRow} class="btn btn-danger btn-sm">
                 <i class="fa fa-trash"></i>
               </a>
           </td>
       </tr>
       </tbody>
    </table>
    <pagination-bar if={opts.pagination=="true"} label="Total de registros encontrados: {this.rows.length}" previous="Anterior" next="Siguiente"/>

     <script>
      this.headers    = JSON.parse(localStorage.getItem('header_'+ this.opts.id));
      this.rows       = JSON.parse(localStorage.getItem('rows_'+ this.opts.id));
      for (var i=0; i < this.rows.length; i++)
      {
        for (var j=0; j < this.rows[i].data.length; j++){
          if (this.headers[j].type!=null) {
           if (this.headers[j].type=='currency') {
              if (this.headers[j].precision!=null)  {
                 this.rows[i].data[j]= '$'+ (Number(this.rows[i].data[j])).toLocaleString('en-US', { style: 'decimal', maximumFractionDigits : this.headers[j].precision, minimumFractionDigits : this.headers[j].precision })
              }
              else
              {
                 this.rows[i].data[j]= '$'+ (Number(this.rows[i].data[j])).toLocaleString('en-US', { style: 'decimal', maximumFractionDigits : localStorage.getItem('precision'), minimumFractionDigits : localStorage.getItem('precision') })
              }
           }
           else
           {
             this.rows[i].data[j]= this.rows[i].data[j]
           }
          }
          else{
           this.rows[i].data[j]= this.rows[i].data[j]
          }
        }
      }

      if (localStorage.getItem('actions_'+ this.opts.id) !== 'undefined'){
          this.actions    = JSON.parse(localStorage.getItem('actions_'+ this.opts.id));
      }

    this.removeRow = function(e){
        this.rows.splice(e.item.index,1);
	}

    this.addRow = function(e){
         if (this.rows.length < this.opts.maxrows) {
         var data=[]
         for (var r = 0; r < this.headers.length; r++){
           data[r] = document.getElementById(this.opts.id+r).children[0].children[1].value;
         }
         this.rows.push({"id":"1", "data":data });
         }
    }

    </script>
</simple-admin>
