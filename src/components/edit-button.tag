<edit-button>
	<button onclick={ goToRef } class="btn btn-success btn-sm">Editar</button>
	<script>
		this.goToRef = function(){
			toRef(opts.to);
		};
	</script>
</edit-button>
