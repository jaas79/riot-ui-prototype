<searchpanel>
   <div>
      <yield/>
   </div>
</searchpanel>

<searchcriteria>
   <div>
     <yield/>
   </div>
</searchcriteria>

<searchresults>
    <table class="table table-striped">
       <thead>
         <tr>
           <th each={headers}> {label} </th>
           <th>Acciones</th>
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
       </tr>
       </tbody>
    </table>
    this.headers = JSON.parse(localStorage.getItem('header_'+ this.opts.id));
    this.rows    = JSON.parse(localStorage.getItem('rows_'+ this.opts.id));
    <script>
     function goToRef(idto) {
      var innerchildren = document.getElementById("contentid").children;

      for (var i = 1; i < innerchildren.length; i++) {
         document.getElementById("contentid").children[i].style.display="none";
      }
      document.getElementById(idto).style.display = "block";
      };
     </script>
</searchresults>
