<menu-item>
  <li onclick={ goToRef }>
		<a>{ opts.label }</a>
	</li>
  <yield/>
	<script>
		this.goToRef = function(){
      toRef(opts.to);
		};
	</script>
</menu-item>
