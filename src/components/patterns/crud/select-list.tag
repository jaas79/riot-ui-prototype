<select-list>
 <div class="row">
  <div class="col-md-5 col-xs-5">
   <br/>
   <span class="section">{ opts.fromtitle }</span>
   <table id="table_source" class="table table-striped table-bordered bulk_action">
       <thead>
         <tr>
           <th></th>
           <th each={headers}> {label} </th>
         </tr>
       </thead>
       <tbody>
       <tr class="" each={row, index in rows}> 
           <td>
             <input type="checkbox" id="check-all" class="flat">
           </td>
           <td each={d , i in row.data }>
             {d}
           </td>
       </tr>
       </tbody>
   </table>
   <pagination-bar if={opts.pagination=="true"} label="Total de registros encontrados: {this.rows.length}" previous="Anterior" next="Siguiente"/>
  </div>
  
  <div class="col-md-1 col-xs-1">
    <br/>
    <br/>
    <br/>
    <br/>
    <button onclick={addRow} class="btn btn-default btn-sm">
                <i class="fa fa-arrow-right"></i>
    </button>
    <button onclick={removeRow} class="btn btn-default btn-sm">
                <i class="fa fa-arrow-left"></i>
    </button>
  </div>
  <div class="col-md-5 col-xs-5">
   <br/>
   <span class="section">{ opts.totitle }</span>
   <table id="table_target" class="table table-striped table-bordered bulk_action">
    <thead>
        <tr>
           <th></th>
           <th each={headers}> {label} </th>
        </tr>
    </thead>
    <tbody>
       <tr if={row.id!=-1} each={row, index in rowstarget} class="" id={index+'tr'}> 
           <td>
             <div class="icheckbox_flat-green" style="position: relative;" onclick={select} id={index}>
             <input type="checkbox" id="check-all" class="flat" style="position: relative; opacity:0;">
             </div>
           </td>
           <td each={d , i in row.data }>
             {d}
           </td>
       </tr>
    </tbody>
    </table>
    <pagination-bar if={opts.pagination=="true"} label="Total de registros encontrados: {this.rows.length}" previous="Anterior" next="Siguiente"/>
   </div>
 </div>
     <script>
      this.deleted=0;
      this.headerstarget=[];
      this.rowstarget=[];
      this.rowstargettemp=[];
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
          this.update();
	  }

    this.addRow = function(e){
         var l = this.rowstarget.length;
         for (var r = 0; r <= this.rows.length; r++){
           if (document.getElementById("table_source").rows[r].className == "selected") {
            var data=[]
            for (var s= 0; s < document.getElementById("table_source").rows[r].children.length; s++) {
               data[s] = document.getElementById("table_source").rows[r].children[s].innerText;
            }
            data.splice(0,1);
            this.rowstarget.push({"id":r-1+l, "data":data });
          }
         }
    }

    this.select = function(e){
         this.deleted=this.deleted +1;
         if (document.getElementById(e.item.index).className=="icheckbox_flat-green") {
          document.getElementById(e.item.index).className="icheckbox_flat-green checked"
          this.rowstarget[e.item.row.id].id = -1;
          e.preventUpdate = true
         } else {
          document.getElementById(e.item.index).className="icheckbox_flat-green"
          }
    }

    </script>
</select-list>
