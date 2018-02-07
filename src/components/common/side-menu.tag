<side-menu>
	<li><a><i class={ opts.icon }></i>{ opts.label }<span class="fa fa-chevron-down"></span></a>
		<!--<ul class="nav child_menu" style="display: block;">-->
		<ul class="nav child_menu">
			<yield/>
		</ul>
	</li>
</side-menu>
