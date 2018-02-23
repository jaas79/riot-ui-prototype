<searchpanel>
	<div>
		<yield/>
	</div>
</searchpanel>

<searchcriteria>
   <div>
	 <formbox title="Búsqueda" action="search" return="/cliente-administrar/" >
		<panel label="Criterios de búsqueda">
			<row>
				<column size="col-md-6 col-xs-12">
					<yield/>
				</column>
			</row>
		</panel>
	 </formbox>
	 <panel label="Resultados de búsqueda">
		 <div if={this.parent.parent.opts.add}>
			  <submit-button to={ this.parent.parent.opts.add } action="add"></submit-button>
		 </div>
	 </panel>
   </div>
   
</searchcriteria>

<searchresults>
   <table-results pagination={opts.pagination} id={opts.id} edit={opts.edit} delete={opts.delete}/>
</searchresults>
