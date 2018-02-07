<searchpanel>
   <div>
      <yield/>
      
   </div>
</searchpanel>

<searchcriteria>
   <div>
     <yield/>
     <div if={parent.opts.add}>
          <submit-button to={ parent.opts.add } action="create"></submit-button>
     </div>
   </div>
</searchcriteria>

<searchresults>
    <table class="table table-striped">
       <thead>
         <tr>
           <th each={headers}> {label} </th>
           <th></th>
           <th></th>
         </tr>
       </thead>
       <tbody>
       <tr each={rows}>
           <td each={d , i in data }>
             {d}
           </td>
           <td>
               <edit-button if={opts.edit} to={ opts.edit }></edit-button>
               <delete-button if={opts.delete} to={ opts.delete }></delete-button>
           </td>
           <td>
               <div style="position:relative">
                <button data-toggle="dropdown" class="btn btn-primary btn-sm dropdown-toggle" type="button" aria-expanded="false">Acciones <span class="caret"></span>
                </button>
                <ul role="menu" class="dropdown-menu"  >
                  <li each={actions}>
                   <a href="#" onclick={this.goToRef}>{label}</a>
                  </li>
                </ul>
               </div>
           </td>
       </tr>
       </tbody>
    </table>
    this.headers    = JSON.parse(localStorage.getItem('header_'+ this.opts.id));
    this.rows       = JSON.parse(localStorage.getItem('rows_'+ this.opts.id));
    this.actions    = JSON.parse(localStorage.getItem('actions_'+ this.opts.id));
    <script>
      this.goToRef = function(e){
			  toRef(e.item.link);
		  };
     </script>
</searchresults>

