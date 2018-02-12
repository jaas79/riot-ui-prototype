<content>
  <div class="right_col" role="main" id="contentid">
      <div class="clearfix"></div>
      <yield/>
  </div>
  <script>
   this.on('mount', function() {
       var innerchildren = document.getElementById("contentid").children;
       for (var j = 1; j < innerchildren.length; j++) {
           document.getElementById("contentid").children[j].style.display = 'none'
       }
       
       this.update();
    })
  </script>
</content>