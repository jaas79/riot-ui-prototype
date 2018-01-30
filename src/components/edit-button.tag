<edit-button>
	<button onclick={ goToRef } class="btn btn-primary btn-sm">Editar</button>
	<script>
		this.goToRef = function(){
			toRef(opts.to);
		};
	</script>
</edit-button>