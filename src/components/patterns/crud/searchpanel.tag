<searchpanel>
   <div>
      <yield/>
   </div>
</searchpanel>

<searchcriteria>
   <div>
     <yield/>
     <div if={parent.opts.add}>
          <submit-button to={ parent.opts.add } action="add"></submit-button>
     </div>
   </div>
</searchcriteria>

<searchresults>
   <table-results pagination={opts.pagination} id={opts.id} edit={opts.edit} delete={opts.delete}/>
</searchresults>
