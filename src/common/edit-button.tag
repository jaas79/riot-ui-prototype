<edit-button>
	<button onclick={ goToRef } class="btn btn-success btn-sm">
		<i class="fa fa-pencil"></i>
		Editar
	</button>
	<script>
		this.goToRef = function(){
			toRef(opts.to);
		};
	</script>
</edit-button>
