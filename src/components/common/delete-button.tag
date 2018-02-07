<delete-button>
    <button onclick={ goToRef } class="btn btn-danger btn-sm">
      <i class="fa fa-trash"></i>
      Borrar
    </button>
	<script>
		this.goToRef = function(){
			toRef(opts.to);
		};
	</script>	
</delete-button>
