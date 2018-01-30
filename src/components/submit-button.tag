<submit-button>
    <button onclick={ goToRef } class="btn btn-primary">{ opts.caption }</button>
	<script>
		this.goToRef = function(){
			toRef(opts.to);
		};
	</script>
</submit-button>