<menu-item>
    <li onclick={ goToRef }>{ opts.label }</li>
	<script>
		this.goToRef = function(){
            toRef(opts.to);
		};
	</script>
    <yield/>
</menu-item>