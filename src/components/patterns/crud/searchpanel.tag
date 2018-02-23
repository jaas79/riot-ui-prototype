<searchpanel>
	<formbox title="Búsqueda" action="search" return="/cliente-administrar/" >
		<panel label="Criterios de búsqueda">
			<row>
				<column size="col-md-6 col-xs-12">
					<inputbox type="number" id="numero-busqueda" label=Número required=true />
					<inputbox type="text" id="nombre-busqueda" label="Nombre(s)" value="Héctor Javier" required=true />
				</column>
			</row>
		</panel>
	</formbox>
	<panel label="Resultados de búsqueda">
		<div>
			<yield/>
		</div>
	</panel>
	
</searchpanel>

<searchcriteria>
   <div>
     <yield/>
     <div if={this.parent.parent.opts.add}>
          <submit-button to={ this.parent.parent.opts.add } action="add"></submit-button>
     </div>
   </div>
   
</searchcriteria>

<searchresults>
   <table-results pagination={opts.pagination} id={opts.id} edit={opts.edit} delete={opts.delete}/>
</searchresults>
